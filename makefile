install:
	@touch /usr/local/bin/warebox
	@cat warebox.sh > /usr/local/bin/warebox
	@chmod 755 /usr/local/bin/warebox
	@echo 'warebox was installed'

uninstall:
	rm /usr/bin/warebox
