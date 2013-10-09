package discs;

import bars.BarBase;

/**
 * ...
 * @author bloognoo
 */
class DiscT extends DiscBase{
	
	private var bar1:BarBase = null;
	private var bar2:BarBase = null;
	private var bar3:BarBase = null;
	
	public function new () {
		
		super();
		
		bar1 = new BarBase();
		addChild( bar1 );
		bar2 = new BarBase();
		bar2.rotation = 90;
		addChild( bar2 );
		bar3 = new BarBase();
		bar3.rotation = 180;
		addChild( bar3 );
	}		
}
