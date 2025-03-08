APP_DIR=~/.local/bin/txt2b64

move-folder:
	mv ../txt2b64 $(APP_DIR)

install-requirements:
	pip install -r $(APP_DIR)/requirements.txt --break-system-packages
	sudo pacman -S --needed xclip

add-alias:
	echo "alias txt2b64='python3 $(APP_DIR)/app.py'" >> ~/.bashrc
	source ~/.bashrc

remove-folder:
	rm -rf $(APP_DIR)

remove-alias:
	sed -i '/alias txt2b64/d' ~/.bashrc
	source ~/.bashrc

install: move-folder install-requirements add-alias
uninstall: remove-folder remove-alias
