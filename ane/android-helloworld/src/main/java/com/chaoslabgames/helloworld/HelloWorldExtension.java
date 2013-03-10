package com.chaoslabgames.helloworld;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

/**
 * @author <a href="mailto:denis.rykovanov@gmail.com">Chaos Encoder</a>
 */
public class HelloWorldExtension implements FREExtension {
    @Override
    public void initialize() {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public FREContext createContext(String s) {
        return new HelloWorldExtensionContext();
    }

    @Override
    public void dispose() {
        //To change body of implemented methods use File | Settings | File Templates.
    }
}
