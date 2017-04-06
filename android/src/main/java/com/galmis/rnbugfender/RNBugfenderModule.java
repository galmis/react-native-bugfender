package com.galmis.rnbugfender;

import com.bugfender.sdk.Bugfender;
import com.facebook.react.*;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

/**
 * Created by shailesh on 2017-04-06.
 */

public class RNBugfenderModule extends ReactContextBaseJavaModule{
  public String TAG = "RNBugfenderModule";
  public RNBugfenderModule(ReactApplicationContext reactContext) {
    super(reactContext);
  }

  @Override
  public boolean canOverrideExistingModule() {
    return true;
  }

  @Override
  public String getName() {
    return "RNBugfender";
  }

  @ReactMethod
  public void activateLogger(String apiKey, boolean debug){
    Bugfender.init(getReactApplicationContext(), apiKey, debug);
  }

  @ReactMethod
  public void info(String text){
    Bugfender.d(TAG, text);
  }

  @ReactMethod
  public void warning(String text){
    Bugfender.w(TAG, text);
  }

  @ReactMethod
  public void error(String text){
    Bugfender.e(TAG, text);
  }

  @ReactMethod
  public void sendIssueWithTitle(String title, String text){
    Bugfender.sendIssue(title, text);
  }

  @ReactMethod
  public void enableUIEventLogging(){
    Bugfender.enableUIEventLogging(getCurrentActivity().getApplication());
  }

  @ReactMethod
  public void setMaximumLocalStorageSize(Integer sizeInMB){
    Bugfender.setMaximumLocalStorageSize(sizeInMB);
  }

  @ReactMethod
  public void forceSendOnce(){
    Bugfender.forceSendOnce();
  }

  @ReactMethod
  public void setForceEnabled(boolean value){
    Bugfender.setForceEnabled(value);
  }
}
