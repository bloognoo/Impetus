package discs;

import bars.BarBase;

/**
 * ...
 * @author bloognoo
 */
class DiscDefault extends DiscBase{
	
	private var bar:BarBase;
	
	public function new () {
		
		super();
		
		bar = new BarBase();
		addChild( bar );
		
	}		

}
