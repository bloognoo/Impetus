package discs;

import flash.display.Sprite;
import flash.events.MouseEvent;

import motion.Actuate;
import motion.easing.Linear;

import bars.BarBase;

/**
 * ...
 * @author bloognoo
 */
class DiscBase extends Sprite implements GridElement{
	
	private var spin:Int = 0;
	private var bar1:BarBase = null;
//	private var bar2:BarBase = null;
	
	public function new () {
		
		super();
		
		bar1 = new BarBase();
		
		graphics.beginFill( 0xFF0000 );
		graphics.drawCircle( 0, 0, 40 );
		graphics.endFill();
		
		addChild( bar1 );
		
		graphics.beginFill( 0xFFFFFF );
		graphics.drawCircle( 0, 0, 4 );
		graphics.endFill();
		
		spark( bar1, true );

		addEventListener( MouseEvent.CLICK, turn );		
	}		

	private function spark( bar:BarBase, direction:Bool ){
		bar.trigger( direction );
	}

	private function turn( event:Dynamic ){
		Actuate.tween( this, 0.5, { rotation: rotation+90 } ).ease(Linear.easeNone).onComplete( function(){ if( rotation >= 360 ){ rotation -=360; } } );
	}

}
