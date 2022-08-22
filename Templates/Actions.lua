local _, JDT = ...

JDT.Templates = JDT.Templates  or {}
JDT.Templates.Actions = JDT.Templates.Actions  or {}

JDT.Templates.Actions.ChatMsg = {
    message_type = "SAY", -- the channel to send the msg to "YELL"
	do_message = true,
	message = "", -- the actual message to be send to 

}
