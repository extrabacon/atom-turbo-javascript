module.exports =
  activate: (state) ->
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-line': => @endLine(false)
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-new-line': => @endLine(true)

  endLine: (insertNewLine) ->
    editor = atom.workspace.activePaneItem
    editor.getCursors().forEach((cursor) ->
      editor.moveCursorToEndOfLine()
      if !/;\s*$/.test(cursor.getCurrentBufferLine())
        editor.insertText(';')
        if insertNewLine
          editor.insertNewlineBelow()
    )
