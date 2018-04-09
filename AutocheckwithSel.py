#!/usr/bin/python2
import requests
from selenium import webdriver

print "Enter ip address of freedombox with https:// and quotes "
freedombox_ip=input() 

site = requests.get(freedombox_ip)   
#use this if get certificate error 'site = requests.get(freedombox_ip, verify=False)'

response_code = site.status_code

print "############################################################################\n"
print "Response code:", response_code


if response_code == 200:
	browser = webdriver.Firefox()			
	browser.get(freedombox_ip)
	Stitle = browser.title
	if Stitle  == "FreedomBox":
		print "Freedombox Working fine"
		browser.close()
	else:
		print "Check IP of FreedomBox "
		browser.close()

elif response_code == 503:
	print "Plinth is not running"

else :
	print "Something Went Wrong : Install FreedomBox in proper way"
 
