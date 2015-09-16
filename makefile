install:
	@touch /usr/bin/warebox
	@cat warebox.sh > /usr/bin/warebox
	@chmod 755 /usr/bin/warebox
	@echo 'warebox was installed'

uninstall:
	rm /usr/bin/warebox
