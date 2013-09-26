package;

import flash.display.Sprite;
import flash.Lib;
import flash.events.Event;

/**
 * ...
 * @author bloognoo
 */
class Impetus extends Sprite {
	
	public function new () {

		super ();

		addEventListener( Event.ENTER_FRAME, onFrame );

	}
	
	private function onFrame( event:Dynamic ):Void{
		trace("Poing");
	}

}
