return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
      "rafamadriz/friendly-snippets", -- Snippet collection
    },
    opts = {
      keymap = {
        preset = "default",
        -- Default keys:
        -- <C-space> : show completion
        -- <C-e>     : hide completion
        -- <C-y>     : accept
        -- <C-n/p>   : next/prev item
        -- <C-b/f>   : scroll docs
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },

      signature = {
        enabled = true, -- Show function signatures
      },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
        menu = {
          draw = {
            columns = {
              { "kind_icon" },
              { "label", "label_description", gap = 1 },
            },
          },
        },
      },
    },
  },
}
