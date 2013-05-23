package {
	
	import flash.display.MovieClip;
	
	//import com.chaoslabgames.helloworld.HelloWorldNative
	
	public class Activity extends MovieClip {
		
		private var display:HelloWorldDisplay;
		
		public function Activity() {
            display = new HelloWorldDisplay();
            addChild(display);
            display.appendText("hello");            
			/*
			display = new HelloWorldDisplay(); 
			var wh:HelloWorldNative = new HelloWorldNative();
			addChild(display);
			display.appendText(wh.requestHelloWorld());			*/
		}
	}
	
}