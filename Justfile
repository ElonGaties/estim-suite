set shell := ["sh", "-c"]
set windows-shell := ["pwsh.exe", "-c"]

# Package entire project into a single luau file
build:
    @darklua process src/ build/

# Lint the source code
lint:
	@selene src/

# Format the source code with stylua
format:
    @stylua --glob '**/*.lua' -- src
