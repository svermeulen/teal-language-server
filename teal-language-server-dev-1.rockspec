rockspec_format = "3.0"
package = "teal-language-server"
version = "dev-1"
source = {
   url = "git://github.com/teal-language/teal-language-server"
}
description = {
   summary = "A language server for the Teal language",
   detailed = "A language server for the Teal language. Experimental at best, use at your own risk :)",
   homepage = "https://github.com/teal-language/teal-language-server",
   license = "MIT",
   issues_url = "https://github.com/teal-language/teal-language-server/issues",
}
dependencies = {
   "dkjson",
   "luafilesystem",
   "cyan",
   "inspect",
}
build = {
   type = "builtin",
   modules = {
		["tealls.poll"] = "src/tealls/poll.c",

      ["tealls.document"] = "build/tealls/document.lua",
      ["tealls.handlers"] = "build/tealls/handlers.lua",
      ["tealls.init"] = "build/tealls/init.lua",
      ["tealls.loop"] = "build/tealls/loop.lua",
      ["tealls.lsp"] = "build/tealls/lsp.lua",
      ["tealls.methods"] = "build/tealls/methods.lua",
      ["tealls.rpc"] = "build/tealls/rpc.lua",
      ["tealls.server"] = "build/tealls/server.lua",
      ["tealls.uri"] = "build/tealls/uri.lua",
      ["tealls.util"] = "build/tealls/util.lua",
   },
   install = {
      lua = {
         ["tealls.poll"] = "src/tealls/poll.d.tl",
         ["tealls.document"] = "src/tealls/document.tl",
         ["tealls.handlers"] = "src/tealls/handlers.tl",
         ["tealls.init"] = "src/tealls/init.tl",
         ["tealls.loop"] = "src/tealls/loop.tl",
         ["tealls.lsp"] = "src/tealls/lsp.tl",
         ["tealls.methods"] = "src/tealls/methods.tl",
         ["tealls.rpc"] = "src/tealls/rpc.tl",
         ["tealls.server"] = "src/tealls/server.tl",
         ["tealls.uri"] = "src/tealls/uri.tl",
         ["tealls.util"] = "src/tealls/util.tl",
      },
      bin = {
         "bin/teal-language-server"
      }
   }
}
