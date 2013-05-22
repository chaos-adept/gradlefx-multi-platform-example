package {
	
	import flash.display.MovieClip;
	
	import com.adobe.air.sampleextensions.android.licensing.LicenseChecker
	import com.adobe.air.sampleextensions.android.licensing.LicenseStatusEvent
	
	public class Activity extends MovieClip {
		
		private var display:HelloWorldDisplay;
		
		public function Activity() {
			display = new HelloWorldDisplay(); 
			
			var lc:LicenseChecker = new LicenseChecker();
			lc.addEventListener(LicenseStatusEvent.STATUS, licenseStatusEventHandler);
			
			addChild(display);
			display.appendText("check lic request");
			lc.checkLicense("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgXXrHSpIBDQckLy2uB1Md4x4+L7Fvvf9kyF5XMbFXG7dWEspjlfIdxB90TApMXec5SnO999JcbK4dRJMsKKp6W/GHGa7gRYC0UXnltAgVPkluuQEScZ+2ZtaZtfJSFPGItTbcB2R2Z8sM5a5Mr6dt+uBX9BZkTaG7cfqGZWyQhlhCaPsfeYbwgVkjXIj7cyyLGLxtpltNFeaN1OE8IQyvSmpEjTVo6CMtDPAEr0DflDgQ8qkIhAXanzZhIT7+pTL5U17DtWFl9N59/e4/dYAwkTcj5vUby1HfFLraZPhBaub7NPHClJNCrULIfTBrCm05Igm5Uls0L2xbUqyp1PtSQIDAQAB");
		}
		
		private function licenseStatusEventHandler(e:LicenseStatusEvent):void {
			trace(e);
			display.appendText( "lic status " + e.status + " , reason: " + e.statusReason);		
		}
	}
	
}