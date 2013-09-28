package;

import flash.display.Sprite;
import flash.Lib;
import flash.events.Event;

import GameBoard;

/**
 * ...
 * @author bloognoo
 */
class Impetus extends Sprite {
	
	private var gameBoard:GameBoard = null; 
	
	public function new () {

		super ();

		gameBoard = new GameBoard();
		gameBoard.x = 100;
		gameBoard.y = 100;
		addChild(gameBoard);

	}
	

}
