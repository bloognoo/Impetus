package elements;

import flash.display.Sprite;

import haxe.xml.Fast;

import discs.DiscBase;

import factories.DiscFactory;

/**
 * ...
 * @author bloognoo
 */
class Palette extends Sprite {
	
	private static inline var GRID_SEPARATION: Int = 80;
	
	private var discs:Array<Array<DiscBase>> = null;
	
	public function new ( data:Xml ) {

		super();		
		
		var count:Int = 0;
		for( disc in data.elementsNamed("disc") ){
			var newDisc:DiscBase = DiscFactory.build( disc );
			newDisc.x = count*GRID_SEPARATION;
			addChild( newDisc );
			count ++;
		}
	}		

}
