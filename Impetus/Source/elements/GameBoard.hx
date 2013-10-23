package elements;

import openfl.Assets;
import flash.display.Sprite;
import flash.events.MouseEvent;
import haxe.xml.Fast;

import discs.DiscBase;
import elements.Palette;
import elements.Backdrop;
import pins.PinBase;
import elements.GridElement;

import factories.PinFactory;

/**
 * ...
 * @author bloognoo
 */
class GameBoard extends Sprite{
	
	private static inline var GRID_SEPARATION: Int = 80;
	
	private var gridX:Int = 0;
	private var gridY:Int = 0;
	
	private var backdrop:Backdrop = null;
	private var palette:Palette = null;
	private var gameBoard:Array<GridElement> = null;
	
	public function new ( levelScript:String ) {
		
		super();
		
		var level:Xml = Xml.parse( levelScript ).elementsNamed("level").next();
		
		backdrop = new Backdrop( level.elementsNamed("robot").next() );
		backdrop.x = -375;
		backdrop.y = -500;
		backdrop.width = backdrop.width * 2.5;
		backdrop.height = backdrop.height * 2.5;
		addChild( backdrop );
		
		palette = new Palette( level.elementsNamed("palette").next() );
		palette.y = 800;
		palette.x = GRID_SEPARATION/2;
		addChild( palette );
				
		gameBoard = new Array<GridElement>();
		
		var count:Int = 0;
		var grid:Xml = level.elementsNamed("grid").next();
		gridX = Std.parseInt( grid.get("x") );
		gridY = Std.parseInt( grid.get("y") );
				
		for( pin in grid.elementsNamed("pin") ){
			var newPin:PinBase = PinFactory.build( pin );
			newPin.x = (Math.floor(count%gridX)*GRID_SEPARATION)+37;
			newPin.y = (Math.floor(count/gridX)*GRID_SEPARATION)+150;
			//trace( count+" "+newPin.x+"|"+newPin.y );
			gameBoard.push( newPin );
			addChild( newPin );
			count ++;
		}
		
		addEventListener( MouseEvent.MOUSE_UP, drop );
	}		

	private function drop( event:Dynamic ){
		this.stopDrag();
		trace("up ");
	}


}
