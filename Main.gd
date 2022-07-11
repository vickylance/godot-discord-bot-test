extends Control
var prefix = "gd."
var image

var BOT


func _ready() -> void:
	var discord_gd = $DiscordBot
	
	# Setup the requried intents, default is 513
	discord_gd.INTENTS = 13825
	
	# Prints extra debug statments
	discord_gd.VERBOSE = true
	discord_gd.TOKEN = "TOKENOTMxMjYzNDM4MjI1ODM0MDI0.YeB4qQ.tZsEdSaeaK8p8jyowIjHXc61V9s"
	discord_gd.login()
	pass


func _on_DiscordBot_bot_ready(bot: DiscordBot) -> void:
	BOT = bot
	image = yield(bot.get_guild_icon(""), "completed")
	
	pass
