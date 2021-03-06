# Minimal makefile for Sphinx documentation
#

.PHONY: help Makefile fresh
# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build
#   if this sphinx template is in a subdirectory, change the prior line to:
#	rsync -ac _build/html/ ../docs
PUBLISH_SITE_DIR		  = ./docs
PUBLISH_DOCS_DIR 		  = ../docs


.DEFAULT_GOAL := site


# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)



site: html singlehtml

	@echo '...rsyncing all contents of docs/html to docs (for Github pages)'

	rsync -ac $(BUILDDIR)/html/ $(PUBLISH_SITE_DIR)
	rsync -ac $(BUILDDIR)/singlehtml $(PUBLISH_SITE_DIR)


# docs: html singlehtml

# 	@echo '...rsyncing all contents of docs/html to ../docs (for subdir of a repo project)'

# 	rsync -ac $(BUILDDIR)/html/ $(PUBLISH_DOCS_DIR)
# 	rsync -ac $(BUILDDIR)/singlehtml $(PUBLISH_DOCS_DIR)




# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
#	@echo '...Deleting all _static, etc directories in docs/'
#	rm -rf docs/_* docs/html
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo '...rsyncing all contents of docs/html to docs (for Github pages)'
