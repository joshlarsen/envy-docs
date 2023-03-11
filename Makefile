cname = "envylint.dev"

.PHONY: site
site:
	@rm -rf docs
	@mkdir -p docs
	@echo $(cname) > docs/CNAME
	@touch docs/.nojekyll
	@cd hugo && hugo -d ../docs
