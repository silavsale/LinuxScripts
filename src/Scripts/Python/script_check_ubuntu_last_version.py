#!/usr/bin/python3

import requests
import re

def get_latest_ubuntu_version():
    url = 'https://ubuntu.com/download/desktop'
    response = requests.get(url)
    
    # Regular expression to find version numbers in the format 'XX.XX'
    # Adjust the regular expression if the format is different
    matches = re.findall(r'\b\d{2}\.\d{2}\b', response.text)
    print(matches)

    if matches:
        # Assuming the first match is the latest version
        # This might need adjustment based on the actual content of the page
        return max(matches, key=lambda v: list(map(int, v.split('.'))))
    else:
        return "Version not found"

print(get_latest_ubuntu_version())
