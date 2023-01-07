-- Global Options
vim.opt.swapfile = false

-- Utility function print lua objects
P = function(v)
  print(vim.inspect(v))
  return v
end
