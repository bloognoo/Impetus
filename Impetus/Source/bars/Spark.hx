package bars;

import flash.display.Sprite;

import motion.Actuate;
import motion.easing.Linear;

/**
 * ...
 * @author bloognoo
 */
class Spark extends Sprite{
	
	public function new () {
	
		super();
		
		graphics.beginFill( 0xFFFF00 );
		graphics.drawRect( -4, -4, 8, 8 );
		graphics.endFill();
							
	}		

	public function trigger( direction:Bool	){
		
		Actuate.tween( this, 0.25, { rotation: 90 } ).ease(Linear.easeNone).repeat();
		if( direction ){
			y = 0;
			Actuate.tween( this, 1, { y: -40 } ).ease(Linear.easeNone).repeat();
		} else {
			y = -40;
			Actuate.tween( this, 1, { y: 0 } ).ease(Linear.easeNone).repeat();
		}
	}
}
