local status, vimspector = pcall(require, "vimspector")
if not status then
  return
end

vimspector.setup {}