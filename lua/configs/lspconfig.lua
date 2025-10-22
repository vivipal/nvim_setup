local servers = { "html", "cssls", "pylsp", "pyright", "clangd" }  
local nvlsp = require "nvchad.configs.lspconfig"  
  
for _, lsp in ipairs(servers) do  
  vim.lsp.config(lsp, {  
    on_attach = nvlsp.on_attach,  
    on_init = nvlsp.on_init,  
    capabilities = nvlsp.capabilities,  
  })  
  vim.lsp.enable(lsp)  
end
