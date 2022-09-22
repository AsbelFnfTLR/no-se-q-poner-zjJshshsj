function onCreate()
	-- background shit
	makeAnimatedLuaSprite('tunnelLight', 'prologue/tunnelLight', -1250, -200);
	addAnimationByPrefix('tunnelLight', 'movement', 'tunnel', 24, true);
	setScrollFactor('tunnelLight', 1, 1);
	
	makeLuaSprite('subway', 'prologue/prologue_subway', -1250, -750);
	setScrollFactor('subway', 1, 1);

	addLuaSprite('tunnelLight', false);
	addLuaSprite('subway', false);
	
	close(true);
end