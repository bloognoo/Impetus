package ;

import flash.display.Sprite;

/**
 * ...
 * @author bloognoo
 */
class Wall extends Sprite {
	
	private var barWidth:Int = 10;	
	private var barHeight:Int = 10;
	
	public function new ( color:Int, barWidth:Int, barHeight:Int ) {
		super();
		
		this.barWidth = barWidth;
		this.barHeight = barHeight;
		
		graphics.beginFill( color );
		graphics.drawRect( 0, 0, barWidth, barHeight );
		graphics.endFill();
		
	}	
	
	public function collide( cx:Float, cy:Float, cradius:Float ):Bool{
		if( cx > x - cradius && cx < x + barWidth + cradius){
			
			if( cy > y - cradius && cy < y + barHeight + cradius ){
				return true;
			}
		}
		return false;
	}

}
