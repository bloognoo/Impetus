package;

import flash.display.Sprite;
import flash.events.Event;

import elements.GameBoard;

/**
 * ...
 * @author bloognoo
 */
class Impetus extends Sprite {
	
	private var gameBoard:GameBoard = null; 
	
	public function new () {

		super ();

		gameBoard = new GameBoard("assets/scripts/levels/0-0.xml");
		//gameBoard.x = 100;
		//gameBoard.y = 150;
		addChild(gameBoard);

	}
	

}
