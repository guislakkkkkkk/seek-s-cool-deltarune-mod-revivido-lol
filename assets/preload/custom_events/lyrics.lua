

state = true;
shouldAdd = true;

function onUpdate(elapsed)
	if (getMouseX('camHUD') > 1148 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('spacebar') then
		objectPlayAnimation('dodge', 'Pressed', false);
	else
		objectPlayAnimation('dodge', 'NotPress', false);
	end
end

function onCreate()
    -- Dodge Keys
    makeAnimatedLuaSprite('dodge', 'dodge', 1148, 588);
		addAnimationByPrefix('dodge', 'NotPress', 'nonPress', 24, false);
		addAnimationByPrefix('dodge', 'Pressed', 'Pressed', 24, false);
		addLuaSprite('dodge', true);
		setObjectCamera('dodge', 'other')
end