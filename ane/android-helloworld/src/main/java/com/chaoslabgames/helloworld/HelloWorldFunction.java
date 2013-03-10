package com.chaoslabgames.helloworld;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.adobe.fre.FREWrongThreadException;

/**
 * @author <a href="mailto:denis.rykovanov@gmail.com">Chaos Encoder</a>
 */
public class HelloWorldFunction implements FREFunction {
    @Override
    public FREObject call(FREContext freContext, FREObject[] freObjects) {
        FREObject result = null;
        try {
            result = FREObject.newObject("Hello from native 2");
            freContext.setActionScriptData(FREObject.newObject("some async data 2"));
            freContext.dispatchStatusEventAsync("firstParam", "secondParams");
        } catch (FREWrongThreadException e) {
            e.printStackTrace();
        }
        return result;
    }
}
