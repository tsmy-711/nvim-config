local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  return
end

local startify = require('alpha.themes.startify')

alpha.setup(startify.config)
