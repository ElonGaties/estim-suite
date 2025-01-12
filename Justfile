set shell := ["sh", "-c"]
set windows-shell := ["pwsh.exe", "-c"]

# Package entire project into a single luau file
build:
    @echo "TODO"

# Lint the source code
lint:
	selene $(git ls-files | rg '\.lua')

# Format the source code with stylua
format:
    stylua --glob '**/*.lua' -- src
