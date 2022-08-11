function onCreatePost()

	if not middlescroll then
		makeLuaSprite('thebettersee01', '', 730, 0)
		makeGraphic('thebettersee01', 470, 720, '000000')
		addLuaSprite('thebettersee01',false)
		setObjectCamera('thebettersee01','hud')
		setProperty('thebettersee01.alpha', 0.65)
	else
		makeLuaSprite('thebettersee01', '', 400, 0)
		makeGraphic('thebettersee01', 470, 720, '000000')
		addLuaSprite('thebettersee01',false)
		setObjectCamera('thebettersee01','hud')
		setProperty('thebettersee01.alpha', 0.65)
	end

end

function onUpdate()
	if curBeat == 304 then
		noteTweenAngle( 'A0', 0 , 360 ,0.6 , CircInOut);
		noteTweenAngle( 'A1', 1 , 360 ,0.5 , CircInOut);
		noteTweenAngle( 'A2', 2 , 360 ,0.8 , CircInOut);
		noteTweenAngle( 'A3', 3 , 360 ,0.2 , CircInOut);
		noteTweenAngle( 'A4', 4 , 360 ,0.3 , CircInOut);
		noteTweenAngle( 'A5', 5 , 360 ,0.2 , CircInOut);
		noteTweenAngle( 'A6', 6 , 360 ,0.4 , CircInOut);
		noteTweenAngle( 'A7', 7 , 360 ,0.3 , CircInOut);
	end
end
