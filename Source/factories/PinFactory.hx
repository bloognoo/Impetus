package factories;

import haxe.xml.Fast;

import pins.PinBase;
import pins.PinNone;
import pins.PinDefault;
import pins.PinStart;
import pins.PinEnd;

/**
 * ...
 * @author bloognoo
 */
class PinFactory {
	
	public static function build( pin:Xml ):PinBase{
		//trace( pin );
		var name:String = pin.get("type");
		if( name == "NONE" ) 	return new PinNone		( pin );
		if( name == "DEFAULT" ) return new PinDefault	( pin );
		if( name == "START" )	return new PinStart		( pin );
		if( name == "END" )		return new PinEnd		( pin );
		throw "'"+name+"' is not a valid type of Pin";
	}
}
