package bars;

import flash.display.Sprite;

import motion.Actuate;

/**
 * ...
 * @author bloognoo
 */
class BarBase extends Sprite{
	
	public function new () {
		
		super();
		
		graphics.beginFill( 0x00FF00 );
		graphics.drawRect( -2, 0, 4, -40 );
		graphics.endFill();

	}		

	public function trigger( direction:Bool ){

	}

}
