
local servers = {
  lua_ls = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
	pylsp = {},
  ast_grep = {},
  jdtls = {},
  clangd = {},
--	"jsonls",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
  handlers = {
    function (server_name)
      require("lspconfig")[server_name].setup {
        settings = servers[server_name],
        on_attach = require("core.plugins_config.lsp.handlers").on_attach,
        capabilities = require("core.plugins_config.lsp.handlers").capabilities,
      }
    end,
  },
})
