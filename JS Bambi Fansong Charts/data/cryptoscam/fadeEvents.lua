function onCreatePost()
	makeLuaSprite('flash', '', 0, 0);
	makeGraphic('flash', 1280, 720, '000000')
	addLuaSprite('flash', true);
	setLuaSpriteScrollFactor('flash', 0, 0)
	setProperty('flash.scale.x', 2)
	setProperty('flash.scale.y', 2)
	setProperty('flash.alpha', 90)
	setObjectCamera('flash', 'camOther')

	makeLuaText('Credits', "Cryptoscam\n\nSong by TofpFL\n\nChart by Jordan Santiago\n\nOpponent Sprites by TheTrueAccount_2", 1250, 0, 720)
	setTextAlignment('Credits', 'Center')
	addLuaText('Credits')
	setTextSize('Credits', 40)
	setObjectCamera('Credits', 'camOther')
	setTextBorder('Credits', 3, '000000')
	setProperty('ytWatermark.alpha', 0)
end

function onSongStart()
	doTweenY('creditTween', 'Credits', 280, 2, 'expoOut')
	doTweenAlpha('flTw', 'flash', 0, 1.8, 'linear')
end

function onStepHit()
	if curStep == 144 then
		doTweenY('creditTween', 'Credits', -420, 1, 'expoIn')
		doTweenAlpha('ytWatermarkIn', 'ytWatermark', 0.5, 1, 'linear')
	end
	if curStep == 2336 then
		setObjectCamera('Credits', 'camOther')
		doTweenAlpha('okBye', 'flash', 1, 3.7, 'linear')
	end
end