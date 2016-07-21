package com.flurry.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import java.util.ArrayList;
import java.util.List;

public class bv
  extends bo
{
  protected gt a(Context paramContext, s params, AdCreative paramAdCreative, Bundle paramBundle)
  {
    if ((paramContext == null) || (params == null) || (paramAdCreative == null) || (paramBundle == null)) {
      return null;
    }
    return new bu(paramContext, params, paramAdCreative, paramBundle);
  }
  
  protected hf a(Context paramContext, s params, Bundle paramBundle)
  {
    if ((paramContext == null) || (params == null) || (paramBundle == null)) {
      return null;
    }
    return new bw(paramContext, params, paramBundle);
  }
  
  protected String f()
  {
    return "Facebook Audience Network";
  }
  
  protected List<bk> g()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new bk("AudienceNetwork", "3.14.+", "com.facebook.ads.InterstitialAd"));
    return localArrayList;
  }
  
  @TargetApi(13)
  protected List<ActivityInfo> j()
  {
    ArrayList localArrayList = new ArrayList();
    ActivityInfo localActivityInfo = new ActivityInfo();
    name = "com.facebook.ads.InterstitialAdActivity";
    configChanges = 4016;
    localArrayList.add(localActivityInfo);
    return localArrayList;
  }
  
  protected List<bk> k()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new bk("AudienceNetwork", "3.14.+", "com.facebook.ads.Ad"));
    return localArrayList;
  }
  
  protected List<String> n()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("com.flurry.fan.MY_APP_ID");
    return localArrayList;
  }
  
  protected List<String> o()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("android.permission.INTERNET");
    localArrayList.add("android.permission.ACCESS_NETWORK_STATE");
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */