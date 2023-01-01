SHELL = /bin/sh

TESTS_FOLDER = tests
MINIMAL_RC = $(TESTS_FOLDER)/minimal.vim


all:
	@printf "Exposed targets:\n\n"
	@printf "\033[1mtest:\033[m\tRun all the tests\n"

test: _random

_random:
	nvim --headless --noplugin -u $(MINIMAL_RC) -c "PlenaryBustedDirectory $(TESTS_FOLDER)/ {minimal_init = '$(MINIMAL_RC)'}"