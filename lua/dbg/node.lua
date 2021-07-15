local dap = require "dap"

dap.adapters.node2 = {
    type = 'executable',
    command = 'node',
    args = {
      '/usr/lib/code/extensions/ms-vscode.node-debug2/out/src/nodeDebug.js'
    }
    -- args = {
    --     vim.fn.stdpath("data") .. "/dapinstall/jsnode_dbg/" ..
    --         '/vscode-node-debug2/out/src/nodeDebug.js'
    --
    --
    -- }
}

dap.configurations.javascript = {
    {
        type = 'node2',
        request = 'launch',
        program = '${workspaceFolder}/${file}',
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector',
        console = 'integratedTerminal'
    }
}

dap.configurations.typescript = {
    {
        type = 'node2',
        request = 'launch',
        program = '${workspaceFolder}/${file}',
        outFiles = {'${workspaceFolder}/dist/**/*.js'},
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        preLaunchTask = "tsc: build - tsconfig.json",
        protocol = 'inspector',
        console = 'integratedTerminal'
    },
    {
        type = 'node2',
        request = 'attach',
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector',
        skipFiles = { '<node_internals>/**' },
        console = 'integratedTerminal'
    }
}

local function attach()
  print("attaching to running process")
  dap.run({
    request = "attach",
    type = "node2",
    sourceMaps = true,
    protocol = "inspector",
    skipFiles = { '<node_internals>/**' }
  })
end

return {
  attach = attach
}
