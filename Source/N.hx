package ;

import flash.display.Sprite;
import flash.events.Event;

/**
 * ...
 * @author bloognoo
 */
class N  extends Sprite{
	
	//ERROR - hcf - cache the calculated values to save on some divides.
	//private static var xList:Array<int> = null;
	//priv
	
	private static var xRes:Float = 800.0;
	private static var yRes:Float = 600.0;
	
	//ERROR - hcf - Force Aspect Ratios
	//private static var xAspect:Float = 1.0;
	//private static var yAspect:Float = 1.0;

	public static function nx( xPos:Float = 1.0){
		return Math.floor( xRes * xPos );
	}
	
	public static function ny( yPos:Float = 1.0){
		return Math.floor( yRes * yPos );
	}
	
	public function new(){
		super();
		this.addEventListener( Event.ADDED_TO_STAGE, onAdded );
	}
	
	private function onAdded( event:Event):Void{
		onResize( event );
		stage.addEventListener( Event.RESIZE, onResize );
	}
	
	private function onResize( event:Event ):Void {
		xRes = stage.stageWidth;
		yRes = stage.stageHeight;
	}
}
