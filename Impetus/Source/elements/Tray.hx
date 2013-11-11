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
		graphics.drawRoundRect( -40, -40, 80, 80, 30, 30 );
		graphics.endFill();
		
		//disc.isInteractive = false;
		
		addChild( disc );		
	}		

}
