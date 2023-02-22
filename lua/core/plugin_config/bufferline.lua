require('nvim-bufferline').setup {
  options = {
    numbers = "none",
    diagnostics = "nvim_lsp",
    separator_style = "slant" or "padded_slant",
    show_tab_indicators = true,
    how_buffer_close_icons = false,
    show_close_icon = false,
  }
}
