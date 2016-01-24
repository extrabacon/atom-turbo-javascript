emptyLine = /^\s*$/
objectLiteralLine = /^\s*[\w'"]+\s*\:\s*/m
continuationLine = /[\{\(;,]\s*$/

module.exports =

  activate: (state) ->
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-line': => @endLine(';', false)
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-line-comma': => @endLine(',', false)
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-line-dot': => @endLine('.', false)
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-line-colon': => @endLine(':', false)
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:end-new-line': => @endLine('', true)
    atom.commands.add 'atom-text-editor',
      'turbo-javascript:wrap-block': => @wrapBlock()

  endLine: (terminator, insertNewLine) ->
    editor = atom.workspace.getActiveTextEditor()
    editor.getCursors().forEach((cursor) ->
      line = cursor.getCurrentBufferLine()
      editor.moveToEndOfLine()

      if !terminator
        # guess the best terminator
        terminator = if objectLiteralLine.test(line) then ',' else ';'

      editor.insertText(terminator) if !continuationLine.test(line) and !emptyLine.test(line)
      editor.insertNewlineBelow() if insertNewLine
    )

  wrapBlock: () ->
    editor = atom.workspace.getActiveTextEditor()
    rangesToWrap = editor.getSelectedBufferRanges().filter((r) -> !r.isEmpty())
    if rangesToWrap.length
      rangesToWrap.sort((a, b) ->
        return if a.start.row > b.start.row then -1 else 1
      ).forEach((range) ->
        text = editor.getTextInBufferRange(range)
        if (/^\s*\{\s*/.test(text) && /\s*\}\s*/.test(text))
          # unwrap each selection from its block
          editor.setTextInBufferRange(range, text.replace(/\{\s*/, '').replace(/\s*\}/, ''))
        else
          # wrap each selection in a block
          editor.setTextInBufferRange(range, '{\n' + text + '\n}')
      )
      editor.autoIndentSelectedRows()
    else
      # create an empty block at each cursor
      editor.insertText('{\n\n}')
      editor.selectUp(2)
      editor.autoIndentSelectedRows()
      editor.moveRight()
      editor.moveUp()
      editor.moveToEndOfLine()
