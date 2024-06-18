package com.maochunjie.pddisv;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.xunmeng.isv.IsvUtil;

public class RNReactNativePddISVModule extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;

    public RNReactNativePddISVModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNReactNativePddISV";
    }

    @ReactMethod
    public void init(final ReadableMap data, final Promise p) {
        IsvUtil.init(reactContext);
        WritableMap map = Arguments.createMap();
        map.putString("message", "success");
        map.putInt("code", 1);
        p.resolve(map);
    }

    @ReactMethod
    public void getPati(final ReadableMap data, final Promise p) {
        WritableMap map = Arguments.createMap();
        map.putString("message", IsvUtil.getPati());
        map.putInt("code", 1);
        p.resolve(map);
    }
}
