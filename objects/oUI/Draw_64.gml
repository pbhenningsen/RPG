/// @desc Draw UI

//Draw Health
var _playerHealth = global.playerHealth;
var _playerHealthMax = global.playerHealthMax;
var _playerHealthFrac = frac(_playerHealth);//frac returns the FRACTION from the player health, like if the health were 3.6 this would return 0.6, we need this because we need to know how many full hearts to show and how many fractions of hearts
_playerHealth -= _playerHealthFrac;

for (var i = 1; i <= _playerHealthMax; i++)
{
	var _imageIndex = (i > _playerHealth); //the i > _playerHealth portion of this code is going to come back as either 1 or 0, this line of code is helping Gamemaker figure out which frame of the heart animation it should draw
	if (i == _playerHealth+1)
	{
		_imageIndex += (_playerHealthFrac > 0);//if playerHealth is greater than 0, we add 1 to our image index for the heart animation
		_imageIndex += (_playerHealthFrac > 0.25);//this makes us draw the half heart
		_imageIndex += (_playerHealthFrac > 0.5);//we're going to draw the last frame
	}
	draw_sprite(sHealth,_imageIndex,8 +((i-1) * 16), 8);//8 is the margin, each heart after that is going to be 16 pixels apart
}

//Coins
var _xx,_yy;

//Coin icon
_xx = 28;
_yy = 31;
draw_sprite(sCoinUI,0,_xx,_yy);

//Coin Text
draw_set_color(c_black);
draw_set_font(fText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
_xx += sprite_get_width(sCoinUI) + 4;
_yy = 27;
var _str = string(global.playerMoney);
draw_text(_xx+1,_yy,_str,);
draw_text(_xx-1,_yy,_str,);
draw_text(_xx,_yy+1,_str,);
draw_text(_xx,_yy-1,_str,);
draw_set_color(c_white);
draw_text(_xx,_yy,_str);

//Draw Item Box
_xx = 8;
_yy = 24;

draw_sprite(sItemUIBox,0,_xx,_yy);
if (global.playerHasAnyItems)
{
	draw_sprite(sItemUI,global.playerEquipped,_xx,_yy)
	if (global.playerAmmo[global.playerEquipped] != -1)
	{
		draw_set_font(fAmmo);
		draw_set_halign(fa_right);
		draw_set_valign(fa_bottom);
		draw_set_color(c_white);
		draw_text
		(
		_xx + sprite_get_width(sItemUIBox)+1,
		_yy + sprite_get_height(sItemUIBox)+1,
		string(global.playerAmmo[global.playerEquipped])
		);
	}
}

//Pause Screen
if (global.gamePaused)
{
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false)
	draw_set_alpha(1.0);//we're setting this back to 1 because otherwise the game would keep drawing everything at .75 opacity
	draw_set_color(c_white);
	draw_set_font(fText);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	

	draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5, "...Game Paused...");
	for (var i = 0; i < array_length(pauseOption); i++)
		{
			var _print = "";
			if (i == pauseOptionSelected)
			{
				_print += "> " + pauseOption[i] + " <"; 
			}
			else
			{
				_print += pauseOption[i];
				draw_set_alpha(0.7);
			}
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.5 + 18 + (i * 12), _print);
			draw_set_alpha(1.0);
	
		}

}