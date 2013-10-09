package pins;

import haxe.xml.Fast;

import pins.PinBase;
/**
 * ...
 * @author bloognoo
 */
class PinDefault extends PinBase{
	
	public function new ( data:Xml ) {
		super();
		
		graphics.beginFill( 0x0000FF );
		graphics.drawCircle( 0, 0, 10 );
		graphics.endFill();
	}		

}
