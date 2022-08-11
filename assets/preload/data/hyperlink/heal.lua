local atkcounter = 0;
function goodNoteHit(id, direction, noteType, isSustainNote)
	if not isSustainNote and difficulty == 1 then
		if atkcounter ~= 100 then
         atkcounter = atkcounter + 2
	    end
	setProperty('boobs.scale.y',atkcounter * 2)
	setProperty('boobs.origin.y', 1)
	end
	
	--makeLuaText('atkText', 'atk: ' .. atkcounter .. '%' , 300,1050,500)
end
function onCreatePost()

	if difficulty == 1 then

		makeLuaSprite('tits', '', 1156, 296)
		makeGraphic('tits', 83, 250, '380915')
		addLuaSprite('tits',false)
		setObjectCamera('tits','hud')

		makeLuaSprite('ass', '', 1160, 300)
		makeGraphic('ass', 75, 200, '120307')
		addLuaSprite('ass',false)
		setObjectCamera('ass','hud')

		makeLuaText('atkText', 'atk: ' .. atkcounter .. '%' , 300,1050,500)
		addLuaText('atkText')
		setTextSize('atkText', 35);
		setObjectCamera('atkText', 'hud')
		makeLuaSprite('boobs', '', 1160, 500)
		makeGraphic('boobs', 75, 1, 'FFA500')
		addLuaSprite('boobs',false)
		setObjectCamera('boobs','hud')
		setObjectCamera('atkText','hud')
		setProperty('boobs.alpha', 0.9)
		if atkcounter == 100 then 
			setProperty('boobs.alpha',1)
		end
	end
end

function onUpdate(elapsed)
	-- start of "update", some variables weren't updated yet
    setTextString('atkText',atkcounter .. '%' )
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and difficulty == 1 then
		if atkcounter == 100 then
			atkcounter = atkcounter - atkcounter 
			setProperty('boobs.scale.y',1)
			characterPlayAnim('girlfriend', 'heal', true)
			setProperty('girlfriend.specialAnim',true)
			setProperty('health',getProperty('health') + 1)
			playSound('heal', 0.8)
		end
	end


end
