package factories;

import haxe.xml.Fast;

import discs.DiscBase;
import discs.DiscNone;
import discs.DiscDefault;
import discs.DiscBar;
import discs.DiscL;
import discs.DiscT;
import discs.DiscCross;

/**
 * ...
 * @author bloognoo
 */
class DiscFactory {
	
	public static function build( disc:Xml ):DiscBase{
		//trace( disc );
		var type:String = disc.get("type");
		var count:Int = Std.parseInt( disc.get("count") );
		if( type == "NONE" 	) return new DiscNone	();
		if( type == "SINGLE") return new DiscDefault();
		if( type == "BAR" 	) return new DiscBar	();
		if( type == "L" 	) return new DiscL		();
		if( type == "T" 	) return new DiscT		();
		if( type == "CROSS" ) return new DiscCross	();
		
		throw "'"+type+"' is not a valid type of Disc";
	}
}
