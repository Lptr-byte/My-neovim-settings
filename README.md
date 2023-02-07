# Hanasa的个人neovim配置（开箱即用（大概））

##  **效果展示**
    
![效果展示](https://raw.githubusercontent.com/Lptr-byte/MyPictures/main/Show1.png "效果展示")


## 使用说明
### 1.需要 `neovim >= 0.8.0` `nodejs >= 14.14`
### 2.开始使用：


*   首先我们将文件克隆至本地：`git clone https://github.com/Lptr-byte/My-neovim-settings ~/`

*   再将nvim文件夹复制到neovim的默认加载位置：`cp ~/My-neovim-settings ~/.config`
   
*   然后打开 `plugins_setup.lua` 文件: `nvim ~/.config/nvim/lua/plugins/plugins_setup.lua` 保存 `:w<CR>` ( `<CR>` 即 `<ENTER>` )后会自动安装packer和插件，此时右侧会弹出安装的信息，安装好后按`q`退出

*  接下来安装 `coc.nvim` ~~(别问为什么要手动安装，问就是懒得改plugins_setup.lua的代码了)~~

    `cd ~/.local/share/nvim/site/pack/packer/start/coc.nvim`

    `yarn install`

    `yarn build`

    安装完coc后再进入nvim手动安装一下 `coc-clangd` 插件就好了，具体操作如下：

    `nvim`

    `:CocInstall coc-clangd`

* Then enjoy your neovim!
### 3.所使用主题即插件

 * 所使用主题
> [tokyonight](https://github.com/folke/tokyonight.nvim)

* 所使用插件
>* [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) 
>
>* [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
>
>* [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
>
>* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) 
>
>* [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
>
>* [mason.nvim](https://github.com/williamboman/mason.nvim)
>
>* [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
>
>* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
>
>* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
>
>* [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
>
>* [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
>
> * [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
>
>* [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
>
>* [cmp-path](https://github.com/hrsh7th/cmp-path)
>
>* [Comment.nvim](https://github.com/numToStr/Comment.nvim)
>
>* [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
>
>* [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
>
>* [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
>
>* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
>
>* [nvim-transparent](https://github.com/xiyaowong/nvim-transparent)
>
>* [coc.nvim](https://github.com/neoclide/coc.nvim)
>
>* [tabular](https://github.com/godlygeek/tabular)
>
>* [vim-markdown](https://github.com/plasticboy/vim-markdown)
>
>* [vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc)
>
>* [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

# 个人快捷键说明
所有快捷键均以放在 `nvim/lua/core/keymaps.lua` 中，并已附上详细说明 ~~才不是因为懒才不写呢~~

# 存在的问题
* `:q`退出编辑后nvim-tree进入全屏占用，但buffer实际未关闭
* `:TransparentEnable` 或 `<space>1` 开启透明背景后左侧nvim-tree目录树未开启透明背景
* 先挖个坑以后再填 ~~这两天看各种官方文档看到吐了~~

# 写在最后
* 自动补全支持lua与c/cpp
* 支持markdown语法高亮和实时预览
* 关于一些坑： nodejs版本不要太高，容易出兼容性问题！

     ~~为什么github上的neovim官方release没有arm64构架的啊~~


