package com.flurry.android.ads;

import android.content.Context;
import android.view.View;
import com.flurry.sdk.da;
import com.flurry.sdk.fg;
import com.flurry.sdk.i;
import com.flurry.sdk.kg;
import com.flurry.sdk.m;
import java.util.Map;

public final class FlurryAdNativeAsset
{
  private static final String a = FlurryAdNativeAsset.class.getSimpleName();
  private da b;
  private int c;
  
  FlurryAdNativeAsset(da paramda, int paramInt)
  {
    if (paramda == null) {
      throw new IllegalArgumentException("asset cannot be null");
    }
    b = paramda;
    c = paramInt;
  }
  
  private String a()
  {
    if (b()) {
      return i.a().j().a(b, c);
    }
    kg.a(a, "Cannot call getValue() this is video ad. Please look for video asset.");
    return null;
  }
  
  private boolean b()
  {
    Map localMap = b.f;
    if (((b.a.equals(fg.k)) || (b.a.equals(fg.l)) || (b.a.equals(fg.m))) && (localMap.containsKey(fg.p))) {
      return !Boolean.parseBoolean((String)localMap.get(fg.p));
    }
    return true;
  }
  
  public View getAssetView(Context paramContext)
  {
    return i.a().j().a(paramContext, b, c);
  }
  
  public String getName()
  {
    return b.a;
  }
  
  public FlurryAdNativeAssetType getType()
  {
    switch (FlurryAdNativeAsset.1.a[b.b.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return FlurryAdNativeAssetType.TEXT;
    }
    return FlurryAdNativeAssetType.IMAGE;
  }
  
  public String getValue()
  {
    switch (FlurryAdNativeAsset.1.a[b.b.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return b.c;
    case 2: 
      return a();
    }
    kg.a(a, "Cannot call getValue() on video type.");
    return null;
  }
  
  public void loadAssetIntoView(View paramView)
  {
    i.a().j().a(b, paramView, c);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.ads.FlurryAdNativeAsset
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */