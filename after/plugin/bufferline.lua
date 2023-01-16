local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end

bufferline.setup {
  options = {
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "neo-tree",
        text = "",
        text_align = "left",
        separator = true
      }
    }
  }
}
