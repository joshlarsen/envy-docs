cname = "envylint.dev"

.PHONY: docs
docs:
	@rm -rf docs
	@mkdir -p docs
	@echo $(cname) > docs/CNAME
	@touch docs/.nojekyll
	@cd hugo && hugo -d ../docs
