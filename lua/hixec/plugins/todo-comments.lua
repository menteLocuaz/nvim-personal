return {
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local todo_comments = require("todo-comments")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		-- TODO: comentario en creacin de comentarios
		-- HACK: seve bien pero puede mejorar
		-- BUG: Error en el codigo
		-- NOTE: añadimos recordatorios
		-- PERF: full optimo
		-- FIX: necesita un arreglo
		-- WARNING: codigo deprecado o peligroso
		--
		keymap.set("n", "]t", function()
			todo_comments.jump_next()
		end, { desc = "Next todo comment" })

		keymap.set("n", "[t", function()
			todo_comments.jump_prev()
		end, { desc = "Previous todo comment" })

		todo_comments.setup()
	end,
}
