# Get process Info of the Battle.net Agent process
Get-Process -Name agent -OutVariable agent

# Kill Battle.net Agent
kill $agent.id 

# Remove Cache folder
Remove-Item C:\ProgramData\Battle.net\Agent\data\cache -Force -Recurse

# Manually Start Battle.net Agent process again (not necessary but faster)

Start-Process C:\ProgramData\Battle.net\Agent\Agent.*\Agent.exe
