require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.install'.compilers = { "zig" }

require'nvim-treesitter.configs'.setup {
  sync_install = false,

  highlight = {
    enable = true,
  },
}

