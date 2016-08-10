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

		addChild( new N() ); //Set up normalised coordinate system
		

		stage.align = StageAlign.TOP_LEFT;
		stage.scaleMode = StageScaleMode.NO_SCALE;	

		gameBoard = new GameBoard( Assets.getText("assets/scripts/levels/0-0.xml") );
		addChild( gameBoard );
		
	}
}
