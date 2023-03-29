if (global.Grenade == true) {

    if show_question("Would you like to buy the grenadier ability for 500 emeralds?")
    {
		global.Grenade = false
		
    if (global.Emeralds >= 500) {
		global.Emeralds -= 500;
		
		AccessToGre = 0;
		
	}
	
    }
	else
	{
		global.Grenade = false
	}
}