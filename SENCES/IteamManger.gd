extends Node2D
var NewestItem =""
var NewestItemAmount =0
var  SellableItems = []
var Have = true
	
##var flower = preload("res://"+"WhiteFlower"+".tres").Value

func _ready():
	pass

func Setitems():
	print("llassadasdasdasdasdawdads")
	

func SellItems():
	print("Items been sold!")
	var SellValue = 0
	for Items in SellableItems:
		print(Items.Value)
		SellValue += Items.Value
		
	print("Your total money gained was " + str(SellValue))
	MoneyManger.totalmoney += SellValue
	SellableItems = []
	pass
