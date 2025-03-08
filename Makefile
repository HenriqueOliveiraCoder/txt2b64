install:  
	pip3 install --user -r requirements.txt  
	mkdir -p ~/.local/share  
	mv ../txt2b64 ~/.local/share/  
	chmod +x ~/.local/share/txt2b64/txt2b64  
	sudo pacman -S --needed xclip  

clean:  
	rm -rf ~/.local/share/txt2b64  
