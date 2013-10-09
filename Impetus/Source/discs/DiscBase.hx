package discs;

import flash.display.Sprite;
import flash.events.MouseEvent;

import motion.Actuate;
import motion.easing.Linear;

import elements.GridElement;

/**
 * ...
 * @author bloognoo
 */
class DiscBase extends Sprite implements GridElement{
	
	private var spin:Int = 0;
	
	public function new () {
		
		super();
		
		graphics.beginFill( 0xFF0000 );
		graphics.drawCircle( 0, 0, 40 );
		graphics.endFill();
		
		graphics.beginFill( 0xFFFFFF );
		graphics.drawCircle( 0, 0, 4 );
		graphics.endFill();
		
		addEventListener( MouseEvent.CLICK, turn );		
	}		

	private function turn( event:Dynamic ){
		Actuate.tween( this, 0.5, { rotation: rotation+90 } ).ease(Linear.easeNone).onComplete( function(){ if( rotation >= 360 ){ rotation -=360; } } );
	}

}
