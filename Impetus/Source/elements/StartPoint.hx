package elements;

import haxe.xml.Fast;

/**
 * ...
 * @author bloognoo
 */
class StartPoint {

	private var edge:Int;
	private var position:Int;
			
	public function new ( data:Xml ) {
		edge = Std.parseInt( data.get("edge") );
		position = Std.parseInt( data.get("position") );
	}		

}
