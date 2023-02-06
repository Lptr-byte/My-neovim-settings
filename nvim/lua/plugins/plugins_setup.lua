-------- Auto Install Packer ------
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins_setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  -- My plugins here
  use 'folke/tokyonight.nvim' --Theme  
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
      'nvim-tree/nvim-tree.lua',
         requires = {
         'nvim-tree/nvim-web-devicons', -- optional, for file icons
        }
    }
    use("christoomey/vim-tmux-navigator") --Use <C-h/j/k/l> to move window
    use "nvim-treesitter/nvim-treesitter"  --grammer highight
    use "p00f/nvim-ts-rainbow" --barkect color
    --LSP Config--
    use{
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }
    --LSP--
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "L3MON4D3/LuaSnip" -- snippets needes
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"
    use "hrsh7th/cmp-path" -- File Path

    use "numToStr/Comment.nvim" --Use 'gcc' or 'gc' to note
    use "windwp/nvim-autopairs" --Auto complete barcket

    use"akinsho/bufferline.nvim" --Buffer Line
    use"lewis6991/gitsigns.nvim" --Left git attentions

    use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',  -- FileSearch
    requires = { {'nvim-lua/plenary.nvim'} }
  }

    --Translater
    --
    use "xiyaowong/nvim-transparent" --Transparent

    use "neoclide/coc.nvim" --Install coc

    --Markdown
    use "godlygeek/tabular"
    use "plasticboy/vim-markdown" --Markdown highlight

    use "mzlogin/vim-markdown-toc" --Auto create content
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use "iamcco/mathjax-support-for-mkdp" --Make sure user can see math formula
    


  
  if packer_bootstrap then
    require('packer').sync()
  end
end)
