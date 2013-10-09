package elements;

import openfl.Assets;
import flash.display.Bitmap;
import flash.display.Sprite;
import haxe.xml.Fast;

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
		image.width = 480;
		image.height = 854;
		addChild( image );
	}		

}
