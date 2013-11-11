package;

import openfl.Assets;

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.display.Bitmap;
import elements.GameBoard;

/**
 * ...
 * @author bloognoo
 */
class Impetus extends Sprite {
	
	private var gameBoard:GameBoard = null; 
	
	public function new () {

		super ();

		stage.align = StageAlign.TOP_LEFT;
		stage.scaleMode = StageScaleMode.NO_SCALE;	

		trace( "WIDTH:  "+stage.stageWidth );
		trace( "HEIGHT: "+stage.stageHeight);

		gameBoard = new GameBoard( Assets.getText("assets/scripts/levels/0-0.xml") );
		addChild( gameBoard );
		
	}
}
