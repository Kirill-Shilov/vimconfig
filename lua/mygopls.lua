lspconfig = require "lspconfig"
lspconfig.gopls.setup {
      cmd = {'gopls', '--remote=auto'},
      settings = {
        gopls = {
          analyses = {
                      unusedparams = true,
                              
            },
                  staticcheck = true,
                        
          },
            
        },
        
  }
