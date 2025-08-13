# Reset kill counter and reschedule
scoreboard players set @a woflo.kills_recent 0
schedule function woflo:utility/reset_kill_counter 10s replace
