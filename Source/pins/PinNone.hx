package pins;

import haxe.xml.Fast;

import pins.PinBase;

/**
 * ...
 * @author bloognoo
 */
class PinNone extends PinBase {
	
	public function new ( data:Xml ) {
		super();

		graphics.beginFill( 0x000000 );
		graphics.drawCircle( 0, 0, 10 );
		graphics.endFill();

	}		

}
