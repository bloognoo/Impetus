package pins;

import haxe.xml.Fast;

import pins.PinBase;
/**
 * ...
 * @author bloognoo
 */
class PinEnd extends PinBase{
	
	public function new ( data:Xml ) {
		super();
		
		graphics.beginFill( 0xFF0000 );
		graphics.drawCircle( 0, 0, 10 );
		graphics.endFill();
	}		

}
