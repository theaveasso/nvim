return {
    {
        'goolord/alpha-nvim',
        lazy = false,
        config = function ()
            local alpha = require 'alpha'
            local dashboard = require 'alpha.themes.dashboard'

            dashboard.section.header.val = {
            [[                          ▓╗▄▄                                        ]],
            [[                          ╙▄▒▒╡╬▀▄▄                                   ]],
            [[                           ╙▒▒▒▒▒▒▒╬▀╗╖                               ]],
            [[                            ╟▒▄▄▀▀▀▀▀╨▀▀▀╖                            ]],
            [[                             ▓▓█▓▀░░▄▀░░╨▄                            ]],
            [[                           ▄▀▀▀▓▀░░░▄░░░░▌                            ]],
            [[                          ┌▀▐▄░░░░░▄╨▓▓░░▌                            ]],
            [[                          ╙╨▀▌░░░░░│▓╙▌░▀▌                            ]],
            [[   ▄▄▄╓                    ╙█▀▀░░░▄▀▀░█░░▌                            ]],
            [[  ▄▓▀▀▀┤╡╡╟▒▄╗▒▒▒▒╦╥╓┌     ▄╬░░░░░▄▄╪▀┤░░▌                  ▄▄ ┌▄     ]],
            [[ ╙█▀▀▒░░░░░░░░░░░░░░░┤╨▀▄ ▀╪▄▄▀╙╙▄░░▓░░░▓                ▀▄▒▌▐▒▌      ]],
            [[  ▀╝╝▀└▄▌▄╪▄░░░░▌░░░░▀▀▀▄░╬▄▀▒╠╨╫█▓░▌▄▓▀▀╨╜╩▒▒▄           ▓▀█▀╫┤▌ ╒╗  ]],
            [[      ▒╥▌└       └▀░░░░░│▀░░░░▄▓█▌▌▓╬▓█▀░░░░░░░╨▀▄        ▓░░░░▓▄╬╥▌  ]],
            [[       └             ▀╬▄░░░░░░▓╬╬╬╬╬╬█▌░░░░░░░░░░░░▀▄     ▄▀┤░░░░▌└   ]],
            [[                       └▀╬┤░░█╣╬╣╣╬╬╣╬▓▄▒░░░░░░░░░░╙▌  ▄▀░░░░░░▓      ]],
            [[                          ╟╬╬╚▒╬▒╬╫▒╣╫╪╬▓▓█░░░░░░░░░╫▀│░░░░▄▀         ]],
            [[                             █╬╣▓▓▓▓▓▌╣▓╣╣╬╣█▀▄░░░░░░░░░░░░▐▀─        ]],
            [[                              └█╣╬╬╬╣╬╬╬╬╬╬╬╣╬▄ ╙╪▄░░░░░┤▄╝▀          ]],
            [[                               ▀▌╣╣╬╣╬╬╣╬╬╬╬╬█     └└└└               ]],
            [[                                ▀╬╣╬╬╬╬╬╬╬╬╬█                         ]],
            [[                                 ▀╣▀╣╣╣╣╣╣╣╣                          ]],
            }

            dashboard.section.buttons.val = {
                dashboard.button("e", "  New file" , ":ene <BAR> startinsert <CR>"),
                dashboard.button("q", "  Quit NVIM" , ":qa<CR>"),
            }

            local handle = io.popen('fortune')
            local fortune = handle:read('*a')
            handle:close()
            dashboard.section.footer.val = fortune

            dashboard.config.opts.noautocmd = true
            
            alpha.setup(dashboard.config)
            
            vim.cmd([[Alpha]])
        end

    }
}
