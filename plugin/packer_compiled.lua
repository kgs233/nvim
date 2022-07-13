-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kgs/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/kgs/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/kgs/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/kgs/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kgs/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "git@github.com:goolord/alpha-nvim"
  },
  ["asynctasks.vim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/asynctasks.vim",
    url = "git@github.com:skywind3000/asynctasks.vim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "git@github.com:neoclide/coc.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "git@github.com:sindrets/diffview.nvim"
  },
  ["fcitx.vim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/fcitx.vim",
    url = "git@github.com:lilydjwg/fcitx.vim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "git@github.com:lukas-reineke/indent-blankline.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "git@github.com:sbdchd/neoformat"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "git@github.com:preservim/nerdcommenter"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "git@github.com:kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "git@github.com:nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "git@github.com:kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "git@github.com:wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "git@github.com:nvim-lua/plenary.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "git@github.com:luochen1990/rainbow"
  },
  ripgrep = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "git@github.com:BurntSushi/ripgrep"
  },
  rnvimr = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "git@github.com:kevinhwang91/rnvimr"
  },
  ["space-vim-dark"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/space-vim-dark",
    url = "git@github.com:liuchengxu/space-vim-dark"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/suda.vim",
    url = "git@github.com:lambdalisue/suda.vim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "git@github.com:nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "git@github.com:nvim-telescope/telescope.nvim"
  },
  ["tokyodark.nvim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/tokyodark.nvim",
    url = "git@github.com:tiagovla/tokyodark.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "git@github.com:vim-airline/vim-airline"
  },
  ["vim-airline-clock"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-airline-clock",
    url = "git@github.com:enricobacis/vim-airline-clock"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "git@github.com:vim-airline/vim-airline-themes"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "git@github.com:voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "git@github.com:tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "git@github.com:airblade/vim-gitgutter"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "git@github.com:RRethy/vim-illuminate"
  },
  ["vim-smooth-scroll"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-smooth-scroll",
    url = "git@github.com:terryma/vim-smooth-scroll"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "git@github.com:honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "git@github.com:tpope/vim-surround"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vim-which-key",
    url = "git@github.com:liuchengxu/vim-which-key"
  },
  vimspector = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vimspector",
    url = "git@github.com:puremourning/vimspector"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/kgs/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "git@github.com:liuchengxu/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles(1) end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
