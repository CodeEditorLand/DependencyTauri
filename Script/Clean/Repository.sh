#!/bin/bash

\echo "Process: Clean/Repository.sh"

# Context: CodeEditorLand/Property/Land/Foundation

Directory=$(\cd -- "$(\dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && \pwd)

\readarray -t Repository <"$Directory"/../Cache/Repository/CodeEditorLand

for Repository in "${Repository[@]}"; do
	\cd "${Repository/'CodeEditorLand/'/}" || \exit

	\pwd

	\find . -type d \( -iname node_modules -o -iname \.git \) -prune -false -o \
		\( \
		-iname .prettierrc \
		-o -iname .azure-pipelines \
		-o -iname .clang-format \
		-o -iname .configurations \
		-o -iname .csharpierrc \
		-o -iname .devcontainer \
		-o -iname .editorconfig \
		-o -iname .eslintignore \
		-o -iname .eslintplugin \
		-o -iname .eslintrc.base.json \
		-o -iname .eslintrc.cjs \
		-o -iname .eslintrc.js \
		-o -iname .eslintrc.json \
		-o -iname .eslintrc.yaml \
		-o -iname .eslintrc.yml \
		-o -iname .github \
		-o -iname .husky \
		-o -iname .nvmrc \
		-o -iname .pnpm-store \
		-o -iname .prettierignore \
		-o -iname .prettierrc.js \
		-o -iname .prettierrc.json \
		-o -iname .prettierrc.yaml \
		-o -iname .stylua.toml \
		-o -iname .vscode \
		-o -iname .yarnrc \
		-o -iname biome.json \
		-o -iname Cargo.lock \
		-o -iname jsconfig.json \
		-o -iname package-lock.json \
		-o -iname pnpm-lock.yaml \
		-o -iname prettier.config.js \
		-o -iname rome.json \
		-o -iname rustfmt.toml \
		-o -iname yarn.lock \
		\) -exec rm -rf {} \;

	# \find . -type d \( -iname node_modules -o -iname \.git \) -prune -false -o \
	# 	-iname '*test*' \
	# 	-type d \
	# 	-exec rm -rf {} \;

	\cd - || \exit
done
