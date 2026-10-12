.PHONY: help lint test check

help: ## List targets
	@grep -E '^[a-z]+:.*## ' $(MAKEFILE_LIST) | awk -F':.*## ' '{printf "%-6s %s\n", $$1, $$2}'

lint: ## README exists and is non-empty
	test -s README.md

test: ## Every local file referenced by README exists
	@grep -oE '\./[^"#) ]+' README.md | sort -u | while read -r f; do \
		test -e "$$f" || { echo "missing: $$f"; exit 1; }; done

check: lint test ## lint + test
