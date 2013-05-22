/*********************************************************************************************************
* ADOBE SYSTEMS INCORPORATED
* Copyright 2011 Adobe Systems Incorporated
* All Rights Reserved.
*
* NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
* terms of the Adobe license agreement accompanying it.  If you have received this file from a
* source other than Adobe, then your use, modification, or distribution of it requires the prior
* written permission of Adobe.
*
*********************************************************************************************************/


package com.adobe.air.sampleextensions.android.licensing
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.StatusEvent;
	import flash.external.ExtensionContext;
	import flash.events.ErrorEvent;
	import flash.errors.IllegalOperationError;	

	/*
	 * LicenseChecker checks whether the applicaiton is licensed and returns appropriate event to the AIR application 
	 */
	
	public class LicenseChecker extends EventDispatcher
	{   
		public function checkLicense($BASE64_PUBLIC_KEY:String):void
		{
			var event:Event = new LicenseStatusEvent(LicenseStatusEvent.STATUS, LicenseStatus.LICENSED, null); 
			dispatchEvent(event);	
		}
		
	}
}
	
