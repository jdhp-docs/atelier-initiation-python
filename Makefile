include meta.make

###############################################################################

all: $(FILE_BASE_NAME).pdf

.PHONY : all clean init slides notes handout jdhp publish

SRCSLIDES=main.html\
		  content/*.md\
		  figs/*

###############################################################################

slides: $(FILE_BASE_NAME).pdf

$(FILE_BASE_NAME).pdf: $(SRCSLIDES)
	@echo "Not available yet"           # TODO

# PUBLISH #####################################################################

publish: jdhp

#jdhp:$(FILE_BASE_NAME).pdf
jdhp:
	### HTML ###
	# JDHP_DOCS_URI is a shell environment variable that contains the
	# destination URI of the HTML files.
	@if test -z $$JDHP_DOCS_URI ; then exit 1 ; fi
	
	# Copy HTML
	@rm -rf $(HTML_TMP_DIR)/
	@mkdir $(HTML_TMP_DIR)/
	cp -v main.html $(HTML_TMP_DIR)/
	cp -vr content $(HTML_TMP_DIR)/
	cp -vr figs $(HTML_TMP_DIR)/
	
	# Upload the HTML files
	rsync -r -v -e ssh $(HTML_TMP_DIR)/ ${JDHP_DOCS_URI}/$(FILE_BASE_NAME)/
	
	#### PDF ###
	## JDHP_DL_URI is a shell environment variable that contains the destination
	## URI of the PDF files.
	#@if test -z $$JDHP_DL_URI ; then exit 1 ; fi
	#
	## Upload the PDF file
	#rsync -v -e ssh $(FILE_BASE_NAME).pdf ${JDHP_DL_URI}/pdf/

## CLEAN ######################################################################

clean:
	@echo "Remove generated files"
	@rm -rf $(HTML_TMP_DIR)/

init: clean
	@echo "Remove target files"
	@rm -f $(FILE_BASE_NAME).pdf
