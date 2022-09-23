function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('RUMIA-warning');
	precacheSound('graze');
end

function onEvent(name, value1, value2)
    if name == "DodgeEvent" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
	makeAnimatedLuaSprite('warning', 'RUMIA-warning', 440, 200);
    luaSpriteAddAnimationByPrefix('warning', 'warning', 'warning', 25, true);
	luaSpritePlayAnimation('warning', 'warning');
	setObjectCamera('warning', 'other');
	scaleLuaSprite('warning', 0.50, 0.50); 
    addLuaSprite('warning', true); 
	playSound('warning', 0.1);
	
	--Set values so you can dodge
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('space') or (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) then
   
   Dodged = true;
   playSound('graze', 0.25);
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('warning');
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   
   end
end