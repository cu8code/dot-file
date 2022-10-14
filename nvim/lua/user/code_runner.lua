TER="alacritty"

require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
    java =  "cd $dir && mkdir -p bin && javac $fileName -d ./bin && java ./bin/$fileNameWithoutExt && ",
    python = "python3 -u",
    typescript =  "deno run",
    rust = "cd $dir && cargo run build",
    cpp = "cd $dir && mkdir -p bin && clang++ -Wall -Wextra -Werror -o ./bin/main $fileName && time ./bin/main",
    c = "cd $dir && mkdir -p bin && gcc -Wall -Wextra -Werror -o ./bin/main $fileName && ./bin/main",
    go = "cd $dir && go run $fileName",
    zsh = "cd $dir && ./$fileName",
    js="cd $dir && node $fileName"
	},
})
