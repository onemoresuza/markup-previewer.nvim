# markup-previewer
A Neovim plugin that makes previewing markup files as easy as typing
`MarkupPreviewer`.

# Dependencies

1. Pandoc; and
2. a reader, depending on the output file type --- _e. g._, `zathura` for PDFs
   and `surf` for html.

# Test Setup

This plugin uses the [busted unit testing framework](https://lunarmodules.github.io/busted/) through
[plenary.nvim](https://github.com/nvim-lua/plenary.nvim) for its testing framework.