return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    -- add a new dependencies to telescope that is our new plugin
  },
  config = function(plugin, opts)
    local status_ok, telescope = pcall(require, "telescope")
    if not status_ok then
      return
    end

    telescope.setup {
      pickers = {
        buffers = {
          theme = "ivy",
          only_cwd = true,
          ignore_current_buffer = true,
          sort_mru = true,
          previewer = false
        },
        current_buffer_fuzzy_find = {
          theme = "ivy",
          previewer = false
        },
      }
    }
  end,
}
