package ;

import flash.display.Sprite;

/**
 * ...
 * @author bloognoo
 */
class Bat extends Sprite{
	
	public function new ( colour:Int ) {
		super();
		
		graphics.beginFill( colour );
		graphics.drawRoundRect( -50, -20, 100, 40, 20, 20 );
		graphics.endFill();
	}		

}
