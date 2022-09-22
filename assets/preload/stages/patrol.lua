function onCreate()
	-- background shit
	makeLuaSprite('funky-bg', 'funky-bg', -400, -250);
	setScrollFactor('funky-bg', 1, 1);
	
	makeAnimatedLuaSprite('daiyousei', 'patrol/PatrolDAI', 950, 350);
	addAnimationByIndices('daiyousei','dance0','DAIYOUSEI_idle','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14',24)
	addAnimationByIndices('daiyousei','dance1','DAIYOUSEI_idle','15,16,17,18,19,20,21,22,23,24,25,26,27,28,29',24)
	setScrollFactor('daiyousei', 1, 1);
	
	makeAnimatedLuaSprite('rumia', 'patrol/PatrolRUMIA', 850, 480);
	addAnimationByPrefix('rumia', 'idle1', 'PatrolRUMIA', 24, false);
	addAnimationByPrefix('rumia', 'idle2', 'PatrolRUMIA', 24, false);
	setScrollFactor('rumia', 0.7, 0.2);
	scaleObject('rumia', 1.2, 1.2);
	
	makeAnimatedLuaSprite('sakuya', 'patrol/PatrolSAKUYA', -350, 420);
	addAnimationByPrefix('sakuya', 'idle1', 'PatrolSAKUYA', 24, false);
	addAnimationByPrefix('sakuya', 'idle2', 'PatrolSAKUYA', 24, false);
	setScrollFactor('sakuya', 0.7, 0.2);
	scaleObject('sakuya', 1.2, 1.2);

	addLuaSprite('funky-bg', false);
	addLuaSprite('daiyousei', true);
	addLuaSprite('rumia', true);
	addLuaSprite('sakuya', true);
end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('daiyousei', 'dance0');
		objectPlayAnimation('rumia', 'idle1');
		objectPlayAnimation('sakuya', 'idle1');
	end
	if curBeat % 2 == 1 then
		objectPlayAnimation('daiyousei', 'dance1');
		objectPlayAnimation('rumia', 'idle2');
		objectPlayAnimation('sakuya', 'idle2');
	end
end