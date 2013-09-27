package discs;

import flash.display.Sprite;

import motion.Actuate;
import motion.easing.Linear;

import bars.BarBase;

/**
 * ...
 * @author bloognoo
 */
class DiscBase extends Sprite{
	
	private var bar1:BarBase = null;
	private var bar2:BarBase = null;
	
	public function new () {
		
		super();
		
		bar1 = new BarBase();
		bar2 = new BarBase();
		bar2.rotation = 90;
		
		trace("DiscBase");
		
		graphics.beginFill( 0xFF0000 );
		graphics.drawCircle( 0, 0, 40 );
		graphics.endFill();
		
		addChild( bar1 );
		addChild( bar2 );
		
		graphics.beginFill( 0xFFFFFF );
		graphics.drawCircle( 0, 0, 4 );
		graphics.endFill();
		
		spark( bar1, true );
		spark( bar2, false );
		
		turn();
	}		

	private function spark( bar:BarBase, direction:Bool ){
		bar.trigger( direction );
	}

	private function turn( event:Dynamic = null ){
	
		Actuate.tween( this, 4, { rotation: 360 } ).ease(Linear.easeNone).repeat();
	}

}
