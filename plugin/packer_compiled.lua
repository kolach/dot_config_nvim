-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors = pcall(function()

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
local package_path_str = "/home/nick/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/nick/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/nick/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/nick/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nick/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/DAPInstall.nvim"
  },
  ["bubbly.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/bubbly.nvim"
  },
  ["caw.vim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/caw.vim"
  },
  ["completion-buffers"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/completion-buffers"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["doom-one.vim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/doom-one.vim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["one-small-step-for-vimkind"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/one-small-step-for-vimkind"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["snippets.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope-vimspector.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/telescope-vimspector.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-clap"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-clap"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gh-line"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-gh-line"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-obsession"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-projectionist"
  },
  ["vim-rel-jump"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-rel-jump"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-solarized8"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-solarized8"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  vimspector = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/vimspector"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: bubbly.nvim
time([[Config for bubbly.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "bubbly.nvim")
time([[Config for bubbly.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: ".v:exception | echom "Please check your config for correctness" | echohl None')
end
