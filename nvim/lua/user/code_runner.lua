ter="alacritty"
loop="while true\n do echo\n 'Do something; hit [CTRL+C] to stop!'\n done"

require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
		java =  "cd $dir && mkdir -p bin && javac $fileName -d ./bin && java ./bin/$fileNameWithoutExt && ",
		python = "python3 -u",
		typescript =  "deno run",
		rust = "cd $dir && cargo run",
    cpp = "cd $dir && mkdir -p bin && g++ $fileName -o ./bin/main && ./bin/main",
    c = "cd $dir && mkdir -p bin && clang -Wall $fileName -o ./bin/main && ./bin/main"
	},
})
