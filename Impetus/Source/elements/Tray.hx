package elements;

import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.text.Font;
import flash.text.FontType;

import flash.events.MouseEvent;

import openfl.Assets;

import discs.DiscBase;

/**
 * ...
 * @author bloognoo
 */
class Tray extends Sprite {
	
	private var count:Int = 0; 
	private var countDisplay:TextField;
	private var format:TextFormat;
	
	public function new ( disc:DiscBase, discCount:Int ) {
		super();
		count = discCount;

		format = new TextFormat( Assets.getFont( "assets/fonts/KGAttackoftheRobots.ttf" ).fontName );
		format.bold = true;
		format.size = 28;
				
		countDisplay = new TextField();
		countDisplay.text = ""+count;
		countDisplay.x = N.nx( 0.08 / 1.5 );
		countDisplay.y = N.ny( 0.04 / 3 );
		countDisplay.textColor = 0x000000;
		countDisplay.setTextFormat( format );
						
		graphics.beginFill( 0xDDDD00 );
		graphics.drawRoundRect( N.nx(-0.0825), N.ny(-0.0475), N.nx(0.17), N.ny(0.1), N.nx(0.04), N.ny(0.022) );
		graphics.endFill();
		
		disc.isInteractive = false;
		
		addChild( disc );		
		addChild( countDisplay );
	}		

}
