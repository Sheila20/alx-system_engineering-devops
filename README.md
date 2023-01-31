Issue Summary:

On 09-01-2023 6:00 pm EAT, I was unable to ssh to my web-server_1 with service reinsteated at 6:30 pm both web-servers were able to function properly The root cause of the outage was when installing firewall I forgaot to allow connection on port 22/TCP and loged out



Timeline for 9/01/23 (EAT):

6:00 pm: after installing firewall and loging out I tried to get back in and received Connection refused message 6:20 pm: I used the command sudo lsof -i -P -n | grep LISTEN to see if its listening on port 22 6:22 pm: I discovered that it was not listening on port 22/tcp 6:30 pm: I requested new web-server installed all the neccessary files again and redid all the tasks on web-01 that were lost.



Root cause and resolution:

The root cause is forgetting to allow connection on port 22 while installing firwall(ufw) when I configured the new server I made sure that ssh connection was allowed by using the command $ sudo ufw allow 22/tcp



Corrective and preventative measures:

To prevent such kind of issues from happening again I make sure to check all the time on what ports is the server listening to before running any command
