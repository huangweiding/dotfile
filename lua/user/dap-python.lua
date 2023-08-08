local status_ok, dap = pcall(require, "dap")
if not status_ok then
  return
end

local dap_python = require('dap-python')
dap_python.setup('/home/weidingh/anaconda3/envs/py36/bin/python')
-- table.insert(dap_python.configurations.python , {
--   {
--     type = 'python';
--     request = 'launch';
--     name = "Launch file";
--     program = "${file}";
--     pythonPath = function()
--       return '/home/weidingh/anaconda3/envs/py36/bin/python'
--     end;
--   },
-- })

local dapui = require("dapui")
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"]=function()
  dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"]=function()
  dapui.close()
end

dap.listeners.before.event_exited["dapui_config"]=function()
  dapui.close()
end

