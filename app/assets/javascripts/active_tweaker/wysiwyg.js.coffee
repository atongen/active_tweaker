jQuery -> new MakeWysiwygs

class MakeWysiwygs

  constructor: ->
    t = { visible: true }
    $('.wysiwyg').wysiwyg
      rmUnusedControls: true
      autoGrow: true
      controls:
        bold:                 t
        copy:                 t
        createLink:           t
        cut:                  t
        html:                 t
        indent:               t
        insertHorizontalRule: t
        insertOrderedList:    t
        insertUnorderedList:  t
        italic:               t
        justifyCenter:        t
        justifyFull:          t
        justifyLeft:          t
        justifyRight:         t
        # ltr:                  t
        outdent:              t
        paste:                t
        redo:                 t
        # rtl:                  t
        strikeThrough:        t
        subscript:            t
        superscript:          t
        underline:            t
        undo:                 t
