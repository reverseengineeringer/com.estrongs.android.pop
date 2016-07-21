package com.flurry.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import java.util.ArrayList;
import java.util.List;

public final class ca
  extends bo
{
  protected gt a(Context paramContext, s params, AdCreative paramAdCreative, Bundle paramBundle)
  {
    if ((paramContext == null) || (params == null) || (paramAdCreative == null) || (paramBundle == null)) {
      return null;
    }
    return new cb(paramContext, params, paramAdCreative, paramBundle);
  }
  
  protected hf a(Context paramContext, s params, Bundle paramBundle)
  {
    if ((paramContext == null) || (params == null) || (paramBundle == null)) {
      return null;
    }
    return new cd(paramContext, params, paramBundle);
  }
  
  protected String f()
  {
    return "InMobi";
  }
  
  protected List<bk> g()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new bk("InMobiAndroidSDK", "4.5.3", "com.inmobi.monetization.IMInterstitial"));
    return localArrayList;
  }
  
  @TargetApi(13)
  protected List<ActivityInfo> j()
  {
    ArrayList localArrayList = new ArrayList();
    ActivityInfo localActivityInfo = new ActivityInfo();
    name = "com.inmobi.androidsdk.IMBrowserActivity";
    configChanges = 3248;
    localArrayList.add(localActivityInfo);
    return localArrayList;
  }
  
  protected List<bk> k()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new bk("InMobiAndroidSDK", "4.5.3", "com.inmobi.monetization.IMBanner"));
    return localArrayList;
  }
  
  protected List<String> n()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("com.flurry.inmobi.MY_APP_ID");
    return localArrayList;
  }
  
  protected List<String> o()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("android.permission.INTERNET");
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */