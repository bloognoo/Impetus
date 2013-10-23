package elements;

import flash.display.Sprite;

import haxe.xml.Fast;

import elements.Tray;

import factories.DiscFactory;

/**
 * ...
 * @author bloognoo
 */
class Palette extends Sprite {
	
	private static inline var GRID_SEPARATION: Int = 80;
	
	private var trays:Array<Tray> = null;
	
	public function new ( data:Xml ) {

		super();		
		
		var count:Int = 0;
		for( disc in data.elementsNamed("disc") ){
			var newTray:Tray = new Tray( DiscFactory.build( disc ), Std.parseInt(disc.get("count")) );
			newTray.x = count*GRID_SEPARATION;
			addChild( newTray );
			count ++;
		}
	}		

}
