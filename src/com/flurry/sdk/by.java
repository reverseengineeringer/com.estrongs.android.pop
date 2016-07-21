package com.flurry.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import java.util.ArrayList;
import java.util.List;

public class by
  extends bo
{
  protected gt a(Context paramContext, s params, AdCreative paramAdCreative, Bundle paramBundle)
  {
    if ((paramContext == null) || (params == null) || (paramAdCreative == null) || (paramBundle == null)) {
      return null;
    }
    return new bx(paramContext, params, paramAdCreative, paramBundle);
  }
  
  protected hf a(Context paramContext, s params, Bundle paramBundle)
  {
    if ((paramContext == null) || (params == null) || (paramBundle == null)) {
      return null;
    }
    return new bz(paramContext, params, paramBundle);
  }
  
  protected String f()
  {
    return "AdMob";
  }
  
  protected List<bk> g()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new bk("GooglePlayServicesSdk", "6.5.+", "com.google.android.gms.ads.InterstitialAd"));
    return localArrayList;
  }
  
  @TargetApi(13)
  protected List<ActivityInfo> j()
  {
    ArrayList localArrayList = new ArrayList();
    ActivityInfo localActivityInfo = new ActivityInfo();
    name = "com.google.android.gms.ads.AdActivity";
    configChanges = 4016;
    localArrayList.add(localActivityInfo);
    return localArrayList;
  }
  
  protected List<bk> k()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new bk("GooglePlayServicesSdk", "6.5.+", "com.google.android.gms.ads.AdView"));
    return localArrayList;
  }
  
  protected List<String> n()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("com.flurry.gms.ads.MY_AD_UNIT_ID");
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
 * Qualified Name:     com.flurry.sdk.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */