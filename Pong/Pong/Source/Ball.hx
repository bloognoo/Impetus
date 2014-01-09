package ;

import flash.display.Sprite;
import flash.events.Event;

/**
 * ...
 * @author bloognoo
 */
class Ball extends Sprite {
	
	private var xvel:Float = 10;
	private var yvel:Float = -10;
	private var wallList:Array<Wall> = null;
	private var colour:Int = 0x000000;
	
	public function new ( colour:Int ) {
		super();
		this.colour = colour;
		this.wallList = new Array<Wall>();
		this.addEventListener( Event.ENTER_FRAME, this.frame );
	}		
	
	private function frame( event:Event ):Void {
		for( i in 0 ... wallList.length ){
			if( wallList[i].collide( x, y, 30 ) ){
				if( i == 0 ) yvel *= -1;
				else xvel *= -1;
			}
		}
		x += xvel;
		y += yvel;
		
		graphics.beginFill( 0x00ff00 );
		graphics.drawCircle( 0, 0, 30 );
		graphics.endFill();
	}

	public function addWall( wall:Wall ):Void{
		wallList.push( wall );
	}
}
