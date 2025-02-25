import base64
from pyperclip import copy

string = input("Text to encode: ")
encoded_data = base64.b64encode(string.encode()).decode()
print("Encode data:", encoded_data)
copy_bool = input("Do you want to copy it? ")
if copy_bool == 'y':
    copy(encoded_data)

input("Press ENTER to leave")
