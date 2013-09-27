package;

import flash.display.Sprite;
import flash.Lib;
import flash.events.Event;

import motion.Actuate;

import discs.DiscBase;

/**
 * ...
 * @author bloognoo
 */
class Impetus extends Sprite {
	
	private var disc:DiscBase; 
	
	public function new () {

		super ();

		addEventListener( Event.ENTER_FRAME, onFrame );

		disc = new DiscBase();
		addChild( disc );
		disc.x = 100;
		disc.y = 100;

	}
	
	private function onFrame( event:Dynamic ):Void{
		//disc.x = mouseX;
		//disc.y = mouseY;
	}

}
