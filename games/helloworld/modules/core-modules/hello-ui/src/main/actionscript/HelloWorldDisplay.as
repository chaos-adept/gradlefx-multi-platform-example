package {

import flash.display.MovieClip;
import flash.text.TextField;


public class HelloWorldDisplay extends MovieClip {
	
	var tf:TextField = new TextField();

	public function HelloWorldDisplay() {
		tf.text = new DomainObject().getMessage();
		tf.multiline = true;
		tf.width = 800;
		tf.height = 600;
		tf.border = true;
		tf.wordWrap = true;		
		addChild(tf);
	}
	
	public function appendText(txt:String):void {
		tf.appendText("\n" + txt);
	}
}


}