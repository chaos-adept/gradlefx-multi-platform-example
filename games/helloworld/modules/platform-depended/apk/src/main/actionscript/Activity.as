package {
	
	import flash.display.MovieClip;
	
	import com.chaoslabgames.helloworld.HelloWorldNative
	import com.adobe.air.sampleextensions.android.licensing.LicenseChecker
	import com.adobe.air.sampleextensions.android.licensing.LicenseStatusEvent
	
	public class Activity extends MovieClip {
		
		private var display:HelloWorldDisplay;
		
		public function Activity() {
			display = new HelloWorldDisplay(); 
			var wh:HelloWorldNative = new HelloWorldNative();
			
			var lc:LicenseChecker = new LicenseChecker();
			lc.addEventListener(LicenseStatusEvent.STATUS, licenseStatusEventHandler);
			
			addChild(display);
			display.appendText(wh.requestHelloWorld());			
		}
		
		private function licenseStatusEventHandler(e:LicenseStatusEvent):void {
			display.appendText(e.toString());		
		}
	}
	
}