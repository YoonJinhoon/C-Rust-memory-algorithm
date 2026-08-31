# Compiler rules for the stack implementation
all: stack stack.s

# Compile standard executable with debug symbols
stack: stack.c
		gcc -Wall -g stack.c -o stack

# Generate raw, unoptimized assembly (-O0) to inspect stack frames and registers
stack.s: stack.c
		gcc -S -O0 stack.c -o stack.s

clean:
		rm -f stack stack.s
