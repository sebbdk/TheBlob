package  {
	
	import flash.display.MovieClip;
	
	public class main2 extends wck.WCK {
		
		var dragArray:Array = [square, circle, triangle];
		
		public function main2() {
			for(var i:int = 0; i < dragArray.length; i++) {
    			dragArray[i].buttonMode = true;
    			dragArray[i].addEventListener(MouseEvent.MOUSE_DOWN, item_onMouseDown);
    			dragArray[i].addEventListener(MouseEvent.MOUSE_UP, item_onMouseUp);
			}
		}
		
		function item_onMouseDown(event:MouseEvent):void {
			var clip:MovieClip = MovieClip(event.currentTarget);
			addChild(clip); //bring to the front
			clip.startDrag();
		}
		function item_onMouseUp(event:MouseEvent):void {
			var clip:MovieClip = MovieClip(event.currentTarget);
			clip.stopDrag();
		}
	}
}
