package com.chaoslabgames.helloworld;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;

import java.util.HashMap;
import java.util.Map;

/**
 * @author <a href="mailto:denis.rykovanov@gmail.com">Chaos Encoder</a>
 */
public class HelloWorldExtensionContext extends FREContext {
    @Override
    public Map<String, FREFunction> getFunctions() {
        System.out.println("**** HelloWorldExtensionContext getFunctions");

        Map<String, FREFunction> functionMap = new HashMap<String, FREFunction>();
        functionMap.put("getHelloWorld", new HelloWorldFunction());

        return functionMap;
    }

    @Override
    public void dispose() {
        System.out.println("**** HelloWorldExtensionContext dispose");
    }
}
