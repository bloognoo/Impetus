package elements;

import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFormat;

import openfl.Assets;

/**
 * ...
 * @author bloognoo
 */
class Title extends Sprite{
	
	private var title:TextField;
	private var subTitle:TextField;
	private var titleFormat:TextFormat;
	private var subTitleFormat:TextFormat;
	
	public function new () {
		
		super();
		
		titleFormat = new TextFormat( Assets.getFont( "assets/fonts/KGAttackoftheRobots.ttf" ).fontName );
		titleFormat.bold = true;
		titleFormat.size = 100;
				
		title = new TextField();
		title.text = "IMPETUS";
		title.x = N.nx( 0.35 );
		title.y = N.ny( 0.0125);
		title.width = N.ny( 0.5 );
		title.textColor = 0x000000;
		title.setTextFormat( titleFormat );

		subTitleFormat = new TextFormat( Assets.getFont( "assets/fonts/KGAttackoftheRobots.ttf" ).fontName );
		subTitleFormat.bold = true;
		subTitleFormat.size = 30;
				
		subTitle = new TextField();
		subTitle.text = ":Heart Of A Robot:";
		subTitle.x = N.nx( 0.4 );
		subTitle.y = N.ny( 0.12);
		subTitle.width = N.ny( 0.75 );
		subTitle.textColor = 0x000000;
		subTitle.setTextFormat( subTitleFormat );
		
		graphics.beginFill( 0x888888 );
		graphics.drawRoundRect( N.nx( 0.35 ), N.ny( 0.025 ), N.nx( 0.4 ), N.ny( 0.15 ), N.nx( 0.05 ), N.ny( 0.02 ) ); 
		graphics.endFill();

		addChild( title );	
		addChild( subTitle );
	}		

}
