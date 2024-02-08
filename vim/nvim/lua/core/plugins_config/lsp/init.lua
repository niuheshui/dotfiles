local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "core.plugins_config.lsp.mason"
require("core.plugins_config.lsp.handlers").setup()
