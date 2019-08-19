@echo off
net start > services.txt
net stop dnscache
net start > servicesNew.txt
fc /A services.txt servicesNew.txt > servicesDiff.txt
net start dnscache
