/// @desc Enums + Setup
enum TRANS_TYPE
{
	SLIDE,
	FADE,
	PUSH,
	STAR,
	WIPE
}

width = display_get_gui_height()
height = display_get_gui_height()
heightHalf = (height * 0.5);
percent = 0;//this will start at 0 and make its way to 1, will represent how far we make it through the transition, when it hits 1, we move to the next room, makes its way to 0 again, when it gets there it destroys the object
leading = OUT;

