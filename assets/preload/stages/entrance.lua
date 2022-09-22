function onCreate()
	-- background shit
	makeLuaSprite('entrance_nightsky', 'entrance/entrance_nightsky', -600, -550);
	setScrollFactor('entrance_nightsky', 0.05, 0.05);
	
	makeLuaSprite('entrance_mountains', 'entrance/entrance_mountains', -600, -350);
	setScrollFactor('entrance_mountains', 0.1, 0.1);
	
	makeLuaSprite('entrance_trees', 'entrance/entrance_trees', -600, -450);
	setScrollFactor('entrance_trees', 0.3, 0.3);
	
	makeLuaSprite('entrance_ground', 'entrance/entrance_ground', -600, -250);
	setScrollFactor('entrance_ground', 0.95, 0.95);

	addLuaSprite('entrance_nightsky', false);
	addLuaSprite('entrance_mountains', false);
	addLuaSprite('entrance_trees', false);
	addLuaSprite('entrance_ground', false);

	close(true);
end