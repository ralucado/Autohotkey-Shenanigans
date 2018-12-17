Escape::
ExitApp
Return

P::
{
WatchCursor:
MouseGetPos, Xm, Ym, id, control 
WinGetTitle, title, ahk_id %id% 
WinGetClass, class, ahk_id %id% 
WinGetPos, Xw, Yw,,, %title% 
Xr := Xm - Xw 
Yr := Ym - Yw
Xs := Xm - Xws
Ys := Ym - Yws
PixelGetColor, vColorChoice, Xr, Yr, RGB
MsgBox, Color Is: %vColorChoice%

if (A_Cursor = "Arrow" and (vColorChoice = "0x38243c"
	or vColorChoice = "0x39253d"
	or vColorChoice = "0x301b32"
	or vColorChoice = "0x301c33"
	or vColorChoice = "0x311c33"
	or vColorChoice = "0x271228"
	or vColorChoice = "0x261229"
	or vColorChoice = "0x5a3434"
	or vColorChoice = "0x482222"
	or vColorChoice = "0x6c4646"
	or vColorChoice = "0x2f1b33"
	or vColorChoice = "0x37243c"
	or vColorChoice = "0x3a253c"))
{
    MsgBox The color is one of the allowed values.
}
return	
}

M::
{
    count := 0
	Loop{

		Random randX, 500, 1500
		Random randY, 600, 900
		PixelGetColor, mycolor, randX, randY, RGB
		MouseMove randX, randY
		if (A_Cursor = "Arrow" and (mycolor = "0x38243c"
		or mycolor = "0x39253d"
		or mycolor = "0x301b32"
		or mycolor = "0x301c33"
		or mycolor = "0x311c33"
		or mycolor = "0x271228"
		or mycolor = "0x261229"
		or mycolor = "0x5a3434"
		or mycolor = "0x482222"
		or mycolor = "0x6c4646"
		or mycolor = "0x2f1b33"
		or mycolor = "0x37243c"
		or mycolor = "0x3a253c")){
			Random swait, 4000, 6000
		    click %randX%, %randY%
		    sleep swait
    		Send {d down}
			Random sTime, 11000, 14000
			sleep sTime
			count := count + 1
			Random c, 17, 35
			if (count > c){
				GoSub O
				Random sTime, 24000, 31000
				sleep sTime
				GoSub I
				Random sTime, 24000, 31000
				sleep sTime
				count := 0
			}
			Random snb, 1, 30
			Random et, 1, 10
			Random joke, 1, 60
			if(snb = 1){
				GoSub 2
			}
			else if(et = 1 or et = 2 or et = 99){
				GoSub 1
			}
			else if(joke < 5){
				GoSub 3
			}

		}
	}
	return	
}

I::
{
	click 276, 400
	return
}

O::
{
	click 1630, 600
	return
}

X::
{

	Random randX, 500, 1500
	Random randY, 600, 900
	PixelGetColor, mycolor, randX, randY, RGB
	click %randX%, %randY%
	return	
}

S::
{
	Random,, 4564325
	return
}

1::
{
	Send {e down}
	Send {t down}
	return
}

2::
{
	MouseMove 1100, 200
	Send {t down}
	click
	return	
}

3::
{
	Send {j down}
	return
}