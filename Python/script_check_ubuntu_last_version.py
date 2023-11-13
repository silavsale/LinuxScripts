import requests
import re

def get_latest_ubuntu_version():
    url = 'https://distrowatch.com/table.php?distribution=ubuntu'
    response = requests.get(url)
    matches = re.findall(r'\d{1,2}\.\d{1,2}', response.text)
    version_numbers = [float(match) for match in matches]
    return max(version_numbers)

print(get_latest_ubuntu_version())

