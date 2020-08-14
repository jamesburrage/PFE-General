$MyEvents = Get-EventLog -LogName "System" -InstanceId 1014 -Message '*wpad*'
#Write-EventLog -LogName "MyTest" -Source "MyScript" -EntryType $MyEvents.EntryType -EventId $MyEvents.EventID -Message $MyEvents.Message

foreach ($MyEvent in $MyEvents) {

    Write-EventLog -LogName "MyTest" -source "MyScript" -EntryType $MyEvent.EntryType -EventId $MyEvent.EventID -Message $MyEvent.Message
    
}



Get-EventLog -LogName "System" -Message '*RemoteRegistry*'

Get-EventLog -LogName "System" | Where-Object {$_.EventID -eq 6009}