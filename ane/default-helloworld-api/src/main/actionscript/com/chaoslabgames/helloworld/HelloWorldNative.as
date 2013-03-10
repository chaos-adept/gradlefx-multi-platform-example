package com.chaoslabgames.helloworld {
	
	import flash.events.Event;
	import flash.events.DataEvent;
	import flash.events.EventDispatcher;
	import flash.events.StatusEvent;
	import flash.external.ExtensionContext;
	import flash.events.ErrorEvent;
	import flash.errors.IllegalOperationError;	
	
	public class HelloWorldNative extends EventDispatcher {
		
		// This value should be same as <extensionID> element in application descriptor
		private var extensionID:String = "com.chaoslabgames.helloworld"; 		
		
		private var contextType:String = null;
		
		public function HelloWorldNative() {
		}
		
		
		public function requestHelloWorld():String {
			var retValue:String = "hello world from default";

			// Create LicenseStatusEvent and return it to the AIR application.
			var event:DataEvent = new DataEvent(DataEvent.DATA, false, false, "async data from default"); 
			dispatchEvent(event);				
			
			return retValue;
		}
		
		
		
		
	}
	
}