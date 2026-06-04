vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		-- Use available |event-data|
		local name, kind = ev.data.spec.name, ev.data.kind

		-- Run build script after plugin's code has changed
		if name == "firenvim" and (kind == "install" or kind == "update") then
			-- Append `:wait()` if you need synchronous execution
			if not ev.data.active then
				vim.cmd.packadd("firenvim")
			end
			vim.cmd("call firenvim#install(0)")
		end

		-- -- If action relies on code from the plugin (like user command or
		-- -- Lua code), make sure to explicitly load it first
		-- if name == "plug-2" and kind == "update" then
		-- 	if not ev.data.active then
		-- 		vim.cmd.packadd("plug-2")
		-- 	end
		-- 	vim.cmd("PlugTwoUpdate")
		-- 	require("plug2").after_update()
		-- end
	end,
})

vim.pack.add({
	"https://github.com/glacambre/firenvim",
})

vim.g.firenvim_config = {
	globalSettings = { alt = "all" },
	localSettings = {
		[".*"] = {
			-- cmdline = "neovim",
			-- content = "text",
			-- priority = 0,
			-- selector = "textarea",
			takeover = "never",
		},
	},
}
if vim.g.started_by_firenvim == true then
	vim.o.laststatus = 0
	-- vim.cmd("startinsert")
else
	vim.o.laststatus = 2
end
