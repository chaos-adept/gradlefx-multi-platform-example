package {
	
	import flash.display.MovieClip;
import flash.filesystem.File;

//import com.chaoslabgames.helloworld.HelloWorldNative
	
	public class Activity extends MovieClip {
		
		private var display:HelloWorldDisplay;
		
		public function Activity() {
            display = new HelloWorldDisplay();
            
            addChild(display);
            display.appendText("hello");
            display.appendText("app icon exist: " + File.applicationDirectory.resolvePath('assets/appIcon.png').exists );
		}
	}
	
}