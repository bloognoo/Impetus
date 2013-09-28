package ;

import flash.display.Sprite;
import discs.DiscBase;
import GridElement;

/**
 * ...
 * @author bloognoo
 */
class GameBoard extends Sprite{
	
	private static inline var GRID_SEPARATION: Int = 80;
	private static inline var GRID_X:Int = 4;
	private static inline var GRID_Y:Int = 4;
	
	private var discs:Array<GridElement> = null;
	
	public function new () {
		
		super();
		
		discs = new Array<GridElement>();
		
		for( i in 0...(GRID_X * GRID_Y) ){
			var index:Int = cast( i, Int );
			var disc:DiscBase = new DiscBase();
			disc.x = (i % GRID_X)*GRID_SEPARATION;
			disc.y = Math.floor(index/GRID_Y)*GRID_SEPARATION;
			addChild( disc );
			discs.push( disc );
		}
		
	}		

}
