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
	
	private var gridX:Int = 0;
	private var gridY:Int = 0;
	
	private var backdrop:Backdrop = null;
	private var palette:Palette = null;
	private var gameBoard:Array<GridElement> = null;
	
	public function new ( levelScript:String ) {
		
		super();
		
		var level:Xml = Xml.parse( levelScript ).elementsNamed("level").next();
		
		backdrop = new Backdrop( level.elementsNamed("robot").next() );
		addChild( backdrop );
		backdrop.scaleY = 2.5;
		backdrop.scaleX = 2.5;
		
		gameBoard = new Array<GridElement>();
		
		var count:Int = 0;
		var grid:Xml = level.elementsNamed("grid").next();
		gridX = Std.parseInt( grid.get("x") );
		gridY = Std.parseInt( grid.get("y") );
				
		for( pin in grid.elementsNamed("pin") ){
			var newPin:PinBase = PinFactory.build( pin );
			newPin.x = N.nx( (Math.floor(count%gridX)*0.15) + 0.125 );
			newPin.y = N.ny( (Math.floor(count/gridX)*0.09) + 0.2 );
			//trace( count+" "+newPin.x+"|"+newPin.y );
			gameBoard.push( newPin );
			addChild( newPin );
			count ++;
		}

		palette = new Palette( level.elementsNamed("palette").next() );
		palette.x = N.nx(0.0855);
		palette.y = N.ny(0.9);
		addChild( palette );
		
		addEventListener( MouseEvent.MOUSE_UP, drop );
	}		

	private function drop( event:Dynamic ){
		this.stopDrag();
		trace("up ");
	}


}
