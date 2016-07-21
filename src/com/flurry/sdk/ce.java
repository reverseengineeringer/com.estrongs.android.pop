package com.flurry.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import java.util.ArrayList;
import java.util.List;

public final class ce
  extends bo
{
  protected gt a(Context paramContext, s params, AdCreative paramAdCreative, Bundle paramBundle)
  {
    if ((paramContext == null) || (params == null) || (paramAdCreative == null) || (paramBundle == null)) {
      return null;
    }
    return new cf(paramContext, params, paramAdCreative, paramBundle);
  }
  
  protected hf a(Context paramContext, s params, Bundle paramBundle)
  {
    if ((paramContext == null) || (params == null) || (paramBundle == null)) {
      return null;
    }
    return new ch(paramContext, params, paramBundle);
  }
  
  protected String f()
  {
    return "Millennial Media";
  }
  
  protected List<bk> g()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new bk("MMAdView", "5.3.0", "com.millennialmedia.android.MMInterstitial"));
    return localArrayList;
  }
  
  protected List<String> h()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("com.flurry.millennial.MYAPIDINTERSTITIAL");
    return localArrayList;
  }
  
  @TargetApi(13)
  protected List<ActivityInfo> j()
  {
    ArrayList localArrayList = new ArrayList();
    ActivityInfo localActivityInfo = new ActivityInfo();
    name = "com.millennialmedia.android.MMActivity";
    configChanges = 3248;
    localArrayList.add(localActivityInfo);
    return localArrayList;
  }
  
  protected List<bk> k()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new bk("MMAdView", "5.3.0", "com.millennialmedia.android.MMAdView"));
    return localArrayList;
  }
  
  protected List<String> l()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("com.flurry.millennial.MYAPID");
    localArrayList.add("com.flurry.millennial.MYAPIDRECTANGLE");
    return localArrayList;
  }
  
  protected List<String> n()
  {
    return new ArrayList();
  }
  
  protected List<String> o()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("android.permission.INTERNET");
    localArrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
    localArrayList.add("android.permission.ACCESS_NETWORK_STATE");
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */