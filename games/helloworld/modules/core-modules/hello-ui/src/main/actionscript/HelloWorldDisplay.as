package {

import flash.display.MovieClip;
import flash.text.TextField;


public class HelloWorldDisplay extends MovieClip {
	public function HelloWorldDisplay() {
		
		var tf:TextField = new TextField();
		tf.text = new DomainObject().getMessage();
		tf.width = 300;
		addChild(tf);
	}
}


}