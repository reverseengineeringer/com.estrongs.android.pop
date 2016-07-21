package com.flurry.android.ads;

import com.flurry.sdk.e;
import java.util.Map;

public final class FlurryAdTargeting
  extends e
{
  @Deprecated
  public void clearAge() {}
  
  @Deprecated
  public void clearGender() {}
  
  @Deprecated
  public void clearKeywords() {}
  
  @Deprecated
  public void clearLocation() {}
  
  public void clearUserCookies()
  {
    super.clearUserCookies();
  }
  
  @Deprecated
  public void setAge(int paramInt) {}
  
  public void setEnableTestAds(boolean paramBoolean)
  {
    super.setEnableTestAds(paramBoolean);
  }
  
  @Deprecated
  public void setGender(FlurryGender paramFlurryGender) {}
  
  @Deprecated
  public void setKeywords(Map<String, String> paramMap) {}
  
  @Deprecated
  public void setLocation(float paramFloat1, float paramFloat2) {}
  
  public void setUserCookies(Map<String, String> paramMap)
  {
    super.setUserCookies(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.ads.FlurryAdTargeting
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */