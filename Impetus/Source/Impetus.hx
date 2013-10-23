package;

import flash.display.Sprite;
import flash.events.Event;

import elements.GameBoard;

import sys.FileSystem;
import sys.FileStat;
import sys.io.File;

/**
 * ...
 * @author bloognoo
 */
class Impetus extends Sprite {
	
	private var gameBoard:GameBoard = null; 
	
	public function new () {

		super ();

		var files:Array<String> = FileSystem.readDirectory( "assets/scripts/levels" );

		files.sort(function(a,b) return Reflect.compare(a.toLowerCase(), b.toLowerCase()) );

		gameBoard = new GameBoard( File.getContent( "assets/scripts/levels/"+files[0] ) );
		addChild( gameBoard );
		
		/*for( file in files ){
			if( file.indexOf("xml") != -1 ){
			
			trace(file);
			//	gameBoard = new GameBoard( File.getContent( "assets/scripts/levels/"+file ) );
			//	addChild( gameBoard );
			}
		}*/
	}
}
