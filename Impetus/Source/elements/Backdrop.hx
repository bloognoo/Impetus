package elements;

import openfl.Assets;
import flash.display.Bitmap;
import flash.display.Sprite;
import haxe.xml.Fast;
import flash.geom.Rectangle;

/**
 * ...
 * @author bloognoo
 */
class Backdrop extends Sprite{
	
	var image:Bitmap = null;
	
	public function new ( data:Xml ) {
		
		super();
		var path:String = "assets/scripts/levels/"+data.get("src");
		image = new Bitmap( Assets.getBitmapData( path ) );
		addChild( image );
		var rectX:Float = Std.parseFloat( data.get("x") );
		var rectY:Float = Std.parseFloat( data.get("y") );
		trace( rectX +" "+ rectY );
		image.scrollRect = new Rectangle( 100, 100, 200, 400 );
	}		

}
