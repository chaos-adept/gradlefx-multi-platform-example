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
		
		
		public function createExtContext():ExtensionContext {
			var _extContext:ExtensionContext = null;
			if (!_extContext) {
				//trace( " Failed to create ExtensionContext " );
				_extContext = ExtensionContext.createExtensionContext( extensionID, contextType );
				if (!_extContext) {
					dispatchEvent(new ErrorEvent(ErrorEvent.ERROR, false, false, "Failed to create context", 0));
				}
			}
			
			return _extContext;
		}
		
		public function requestHelloWorld():String {
			var extContext:ExtensionContext = createExtContext();
			extContext.addEventListener(StatusEvent.STATUS, statusHandler);
			var retValue:String = extContext.call( "getHelloWorld") as String;
			if(!retValue)
			{
				//trace(" Failed to call checkLicenseNative ");					
				extContext.removeEventListener(StatusEvent.STATUS, statusHandler);
				var errorEvent:ErrorEvent = new ErrorEvent(ErrorEvent.ERROR, false, false, "Failed to make request", 0);
				dispatchEvent(errorEvent);
			}
			return retValue;
			
			
			function statusHandler(evt:StatusEvent):void 
			{
				if( !evt.level.length )
					evt.level = null;

				// Create LicenseStatusEvent and return it to the AIR application.
				var event:DataEvent = new DataEvent(DataEvent.DATA, false, false, extContext.actionScriptData.toString()); 
				dispatchEvent(event);	
				extContext.removeEventListener(StatusEvent.STATUS, statusHandler);
			}			
		}
		
		
		
		
	}
	
}