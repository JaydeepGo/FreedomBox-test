#!/usr/bin/python2
import requests
import bs4


print("Enter ip address of freedombox with https:// and quotes ")
freedombox_ip=input() 

site = requests.get(freedombox_ip, verify=False)
response_code = site.status_code

Sdata = bs4.BeautifulSoup(site.text, "lxml")
Stitle_big = Sdata.title.text
Stitle = Stitle_big.strip()

print ("############################################################################\n")
print (response_code)


if response_code == 200:
	if Stitle  == "FreedomBox":
		print("Freedombox Working fine")
	else:
		print("Check IP of FreedomBox ")
elif response_code == 503:
	print("Plinth is not running")

else :
	print("Something Went Wrong : Install FreedomBox in proper way")
 
