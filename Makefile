all:
	jekyll build
	jekyll serve --baseurl ''

clean: 
	rm -rf _site
