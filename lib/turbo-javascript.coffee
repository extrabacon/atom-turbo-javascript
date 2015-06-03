module.exports =
  activate: (state) ->
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-line': => @endLine(';', false)
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-line-comma': => @endLine(',', false)
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-new-line': => @endLine('', true)

  endLine: (terminator, insertNewLine) ->
    editor = atom.workspace.getActivePaneItem()
    editor.getCursors().forEach((cursor) ->
      line = cursor.getCurrentBufferLine()
      editor.moveToEndOfLine()
      if !terminator
        terminator = if /^\s*[\w'"]+\s*\:\s*/m.test(line) then ',' else ';'
      if !/[\{\(;,]\s*$/.test(line)
        editor.insertText(terminator)
        if insertNewLine
          editor.insertNewlineBelow()
    )
