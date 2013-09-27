package bars;

import flash.display.Sprite;

/**
 * ...
 * @author bloognoo
 */
class BarBase extends Sprite{
	
	private var spark:Spark = null;
	
	public function new () {
		
		super();
		
		spark = new Spark();
		addChild( spark );
		
		graphics.beginFill( 0x00FF00 );
		graphics.drawRect( -2, 0, 4, -40 );
		graphics.endFill();

	}		

	public function trigger( direction:Bool ){
		spark.trigger( direction );
	}

}
