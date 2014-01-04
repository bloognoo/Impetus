package elements;

import flash.display.Sprite;
import flash.text.Font;
import flash.text.FontType;

import flash.events.MouseEvent;

import discs.DiscBase;

/**
 * ...
 * @author bloognoo
 */
class Tray extends Sprite {
	
	var count:Int = 0; 
	
	public function new ( disc:DiscBase, discCount:Int ) {
		super();
		count = discCount;
		
		graphics.beginFill( 0xDDDD00 );
		graphics.drawRoundRect( N.nx(-0.0825), N.ny(-0.0475), N.nx(0.17), N.ny(0.1), N.nx(0.04), N.ny(0.022) );
		graphics.endFill();
		
		//disc.isInteractive = false;
		
		addChild( disc );		
	}		

}
