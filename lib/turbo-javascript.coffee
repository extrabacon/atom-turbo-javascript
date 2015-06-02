module.exports =
  activate: (state) ->
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-line': => @endLine(false)
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-new-line': => @endLine(true)

  endLine: (insertNewLine) ->
    editor = atom.workspace.getActivePaneItem()
    editor.getCursors().forEach((cursor) ->
      editor.moveToEndOfLine()
      if !/;\s*$/.test(cursor.getCurrentBufferLine())
        editor.insertText(';')
        if insertNewLine
          editor.insertNewlineBelow()
    )
