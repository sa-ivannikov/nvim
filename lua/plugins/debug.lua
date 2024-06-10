return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint <CR>", {})
        end,
    },
    {
        "mfussenegger/nvim-dap-python",
        dependencies = {
            "mfussenegger/nvim-dap",
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            local path = "~/.virtualenvs/debugpy/bin/python"
            local dap_python = require("dap-python")
            dap_python.setup(path)
            vim.keymap.set("n", "<leader>dpr", dap_python.test_method, {})
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.after.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.after.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end,
    },
}
