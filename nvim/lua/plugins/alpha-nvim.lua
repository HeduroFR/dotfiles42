local coolLines = {
  [[    ███╗   ███╗ █████╗ ██╗  ██╗███████╗   ]],
  [[    ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝   ]],
  [[    ██╔████╔██║███████║█████╔╝ █████╗     ]],
  [[    ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝     ]],
  [[    ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗   ]],
  [[    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ]],
  [[      ██████╗ ██████╗  ██████╗ ██╗        ]],
  [[     ██╔════╝██╔═══██╗██╔═══██╗██║        ]],
  [[     ██║     ██║   ██║██║   ██║██║        ]],
  [[     ██║     ██║   ██║██║   ██║██║        ]],
  [[     ╚██████╗╚██████╔╝╚██████╔╝███████╗   ]],
  [[      ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   ]],
  [[███████╗████████╗██╗   ██╗███████╗███████╗]],
  [[██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝]],
  [[███████╗   ██║   ██║   ██║█████╗  █████╗  ]],
  [[╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝  ]],
  [[███████║   ██║   ╚██████╔╝██║     ██║     ]],
  [[╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝     ]],
}

local solveLines = {
  [[╔═╗┬┬─┐┌─┐┌┬┐  ┌─┐┌─┐┬ ┬  ┬┌─┐  ┌┬┐┬ ┬┌─┐  ┌─┐┬─┐┌─┐┌┐ ┬  ┌─┐┌┬┐   ]],
  [[╠╣ │├┬┘└─┐ │   └─┐│ ││ └┐┌┘├┤    │ ├─┤├┤   ├─┘├┬┘│ │├┴┐│  ├┤ │││   ]],
  [[╚  ┴┴└─└─┘ ┴┘  └─┘└─┘┴─┘└┘ └─┘   ┴ ┴ ┴└─┘  ┴  ┴└─└─┘└─┘┴─┘└─┘┴ ┴ o ]],
  [[      ╔╦╗┬ ┬┌─┐┌┐┌  ┬ ┬┬─┐┬┌┬┐┌─┐  ┌┬┐┬ ┬┌─┐  ┌─┐┌─┐┌┬┐┌─┐         ]],
  [[       ║ ├─┤├┤ │││  │││├┬┘│ │ ├┤    │ ├─┤├┤   │  │ │ ││├┤          ]],
  [[       ╩ ┴ ┴└─┘┘└┘  └┴┘┴└─┴ ┴ └─┘   ┴ ┴ ┴└─┘  └─┘└─┘─┴┘└─┘         ]],
  [[                                                     - John Johnson]]
}

local humourLines = {
  [[╔═╗┌─┐┌┬┐┌─┐  ┬┌─┐  ┬  ┬┬┌─┌─┐  ┬ ┬┬ ┬┌┬┐┌─┐┬─┐                           ]],
  [[║  │ │ ││├┤   │└─┐  │  │├┴┐├┤   ├─┤│ │││││ │├┬┘                           ]],
  [[╚═╝└─┘─┴┘└─┘  ┴└─┘  ┴─┘┴┴ ┴└─┘  ┴ ┴└─┘┴ ┴└─┘┴└─o                          ]],
  [[╦ ╦┬ ┬┌─┐┌┐┌  ┬ ┬┌─┐┬ ┬  ┬ ┬┌─┐┬  ┬┌─┐  ┌┬┐┌─┐  ┌─┐─┐ ┬┌─┐┬  ┌─┐┬┌┐┌  ┬┌┬┐]],
  [[║║║├─┤├┤ │││  └┬┘│ ││ │  ├─┤├─┤└┐┌┘├┤    │ │ │  ├┤ ┌┴┬┘├─┘│  ├─┤││││  │ │ ]],
  [[╚╩╝┴ ┴└─┘┘└┘   ┴ └─┘└─┘  ┴ ┴┴ ┴ └┘ └─┘   ┴ └─┘  └─┘┴ └─┴  ┴─┘┴ ┴┴┘└┘  ┴ ┴┘]],
  [[                                                        ┬┌┬┐┌─┐  ┌┐ ┌─┐┌┬┐]],
  [[                                                        │ │ └─┐  ├┴┐├─┤ ││]],
  [[                                                        ┴ ┴ └─┘  └─┘┴ ┴─┴┘]],
  [[                                                              - Cory House]],
}

local bugLines = {
  [[  _____   _                          _                 _                             ]],
  [[ |_   _| | |_    ___   _ _   ___    (_)  ___    __ _  | | __ __ __  __ _   _  _   ___]],
  [[   | |   | ' \  / -_) | '_| / -_)   | | (_-<   / _` | | | \ V  V / / _` | | || | (_-<]],
  [[   |_|   |_||_| \___| |_|   \___|   |_| /__/   \__,_| |_|  \_/\_/  \__,_|  \_, | /__/]],
  [[                                                                           |__/      ]],
  [[                                                   _                                 ]],
  [[  ___   _ _    ___     _ __    ___   _ _   ___    | |__   _  _   __ _                ]],
  [[ / _ \ | ' \  / -_)   | '  \  / _ \ | '_| / -_)   | '_ \ | || | / _` |               ]],
  [[ \___/ |_||_| \___|   |_|_|_| \___/ |_|   \___|   |_.__/  \_,_| \__, |               ]],
  [[                                                                |___/                ]],
  [[  _              __   _                                                              ]],
  [[ | |_   ___     / _| (_) __ __                                                       ]],
  [[ |  _| / _ \   |  _| | | \ \ /  _                                                    ]],
  [[  \__| \___/   |_|   |_| /_\_\ (_)                                     - Ellen Ullman]],
}

local fixLines = {
  [[    ┌─┐┬─┐ ┬  ┌┬┐┬ ┬┌─┐  ┌─┐┌─┐┬ ┬┌─┐┌─┐      ]],
  [[    ├┤ │┌┴┬┘   │ ├─┤├┤   │  ├─┤│ │└─┐├┤       ]],
  [[    └  ┴┴ └─   ┴ ┴ ┴└─┘  └─┘┴ ┴└─┘└─┘└─┘┘     ]],
  [[╔╗╔╔═╗╔╦╗  ╔╦╗╦ ╦╔═╗  ╔═╗╦ ╦╔╦╗╔═╗╔╦╗╔═╗╔╦╗╔═╗]],
  [[║║║║ ║ ║    ║ ╠═╣║╣   ╚═╗╚╦╝║║║╠═╝ ║ ║ ║║║║╚═╗]],
  [[╝╚╝╚═╝ ╩    ╩ ╩ ╩╚═╝  ╚═╝ ╩ ╩ ╩╩   ╩ ╚═╝╩ ╩╚═╝]],
  [[                              - Steve Maguire ]],
}

local processLines = {
  [[╔╦╗╦ ╦╔═╗  ╔═╗╦═╗╔═╗╔═╗╔╦╗╦╦  ╦╔═╗  ╔═╗╦═╗╔═╗╔═╗╔═╗╔═╗╔═╗]],
  [[ ║ ╠═╣║╣   ║  ╠╦╝║╣ ╠═╣ ║ ║╚╗╔╝║╣   ╠═╝╠╦╝║ ║║  ║╣ ╚═╗╚═╗]],
  [[ ╩ ╩ ╩╚═╝  ╚═╝╩╚═╚═╝╩ ╩ ╩ ╩ ╚╝ ╚═╝  ╩  ╩╚═╚═╝╚═╝╚═╝╚═╝╚═╝]],
  [[This is Amazing!]],
  [[This is difficult]],
  [[This is shit]],
  [[I am shit]],
  [[This might be OK]],
  [[This is Amazing!]],
}

local function lineColor(lines, popStart, popEnd)
  local out = {}
  for i, line in ipairs(lines) do
    local hi = "StartLogo" .. i
    if i > popStart and i <= popEnd then
      hi = "StartLogoPop" .. i - popStart
    elseif i > popStart then
      hi = "StartLogo" .. i - popStart
    else
      hi = "StartLogo" .. i
    end
    table.insert(out, { hi = hi, line = line})
  end
  return out
end

local headers = {
  lineColor(coolLines, 6, 12),
  lineColor(solveLines, 0, 0),
  lineColor(humourLines, 6, 9),
  lineColor(bugLines, 5, 10),
  lineColor(processLines, 0, 3),
  lineColor(fixLines, 0, 0),
}

local function header_chars()
  math.randomseed(os.time())
  return headers[math.random(#headers)]
end

local function header_color()
  local lines = {}
  for _, lineConfig in pairs(header_chars()) do
    local hi = lineConfig.hi
    local line_chars = lineConfig.line
    local line = {
      type = "text",
      val = line_chars,
      opts = {
        hl = hi,
        shrink_margin = false,
        position = "center",
      },
    }
    table.insert(lines, line)
  end

  local output = {
    type = "group",
    val = lines,
    opts = { position = "center", },
  }

  return output
end

local function configure()
  local theme = require("alpha.themes.theta")
  local themeconfig = theme.config
  local dashboard = require("alpha.themes.dashboard")
  local recent_files = themeconfig.layout[4].val[3]
  local default_recent_files = recent_files.val
  recent_files.val = function()
    local groups = default_recent_files()
    local group = groups[1]
    local files = require("alpha.utils").get_mru(vim.fn.getcwd(), 10, theme.mru_opts.ignore)

    if not group or not group.val then
      return groups
    end

    for index, path in ipairs(files) do
      if vim.fn.fnamemodify(path, ":e"):lower() == "pdf" then
        local button = group.val[index]
        local command = string.format("<cmd>lua require('pdf_viewer').open(%s)<CR>", vim.inspect(path))

        if button and button.opts.keymap then
          button.opts.keymap[3] = command
        end

        if button then
          button.on_press = function()
            require("pdf_viewer").open(path)
          end
        end
      end
    end

    return groups
  end
  local buttons = {
    type = "group",
    val = {
      { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
      { type = "padding", val = 1 },
      dashboard.button("e", "  New file", "<cmd>ene<CR>"),
      dashboard.button("SPC f f", "   Find file"),
      dashboard.button("SPC f g", "   Find text"),
      dashboard.button("u", "   Update Plugins", "<cmd>Lazy sync<CR>"),
      dashboard.button("q", "   Quit", "<cmd>qa<CR>"),
    },
    position = "center",
  }

  themeconfig.layout[2] = header_color()
  themeconfig.layout[6] = buttons

  return themeconfig
end

return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    require'alpha'.setup(configure())
  end
};
