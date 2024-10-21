#!/bin/bash
#
clean() {
	mkdir -p ./out
	rm -rf out
	if [ -e compile_commands.json ]; then
		rm compile_commands.json
	fi
	exit 1
}

if [ $# -ge 1 ]; then
	case "$1" in
		"clean" | "cl" | "c" | "clea")
			clean
			;;
	esac
fi


mkdir -p out && cd out
cmake .. -G "Unix Makefiles" -DCMAKE_EXPORT_COMPILE_COMMANDS=1
# ln -s compile_commands.json ../

### Although the above symlink method is popular/recommended. Straight up moving tends to be
### better for my setup.

mv compile_commands.json ../
