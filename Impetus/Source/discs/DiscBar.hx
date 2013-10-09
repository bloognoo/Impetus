package discs;

import bars.BarBase;

/**
 * ...
 * @author bloognoo
 */
class DiscBar extends DiscBase{
	
	private var bar1:BarBase = null;
	private var bar2:BarBase = null;
	
	public function new () {
		
		super();
		
		bar1 = new BarBase();
		addChild( bar1 );
		bar2 = new BarBase();
		bar2.rotation = 180;
		addChild( bar2 );
	}		

}
