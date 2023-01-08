local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

configs.setup {
    ensure_installed = {
        "help",
        "javascript",
        "typescript",
        "c",
        "cmake",
        "lua",
        "rust"
    }, 

    sync_install = false, -- Install parsers synchronously (only applied to `ensure_installed`)

    ignore_install = { "" }, -- List of parsers to ignore installing (for "all")

    highlight = {
        enable = true, -- `false` will disable the whole extension
        disable = { "" },
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = true
    },

    ranbow = {
        enable = true,
        extented_mode = true,
        max_file_lines = nil
    }
}
