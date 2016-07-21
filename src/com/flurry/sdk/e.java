package com.flurry.sdk;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class e
{
  private cx a;
  private final Map<String, String> b = new HashMap();
  private Map<String, String> c;
  private Integer d;
  private Integer e;
  private boolean f;
  private String g;
  
  @Deprecated
  public void clearAge()
  {
    d = null;
  }
  
  public void clearFixedAdId()
  {
    g = null;
  }
  
  @Deprecated
  public void clearGender()
  {
    e = null;
  }
  
  @Deprecated
  public void clearKeywords()
  {
    c = null;
  }
  
  @Deprecated
  public void clearLocation()
  {
    a = null;
  }
  
  public void clearUserCookies()
  {
    b.clear();
  }
  
  public e copy()
  {
    e locale = new e();
    if (b != null) {
      locale.setUserCookies(new HashMap(b));
    }
    locale.setEnableTestAds(f);
    return locale;
  }
  
  @Deprecated
  public Integer getAge()
  {
    return Integer.valueOf(-1);
  }
  
  public boolean getEnableTestAds()
  {
    return f;
  }
  
  public String getFixedAdId()
  {
    return g;
  }
  
  @Deprecated
  public Integer getGender()
  {
    return Integer.valueOf(-1);
  }
  
  @Deprecated
  public Map<String, String> getKeywords()
  {
    return null;
  }
  
  @Deprecated
  public cx getLocation()
  {
    return null;
  }
  
  public Map<String, String> getUserCookies()
  {
    return b;
  }
  
  @Deprecated
  public void setAge(int paramInt) {}
  
  public void setEnableTestAds(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void setFixedAdId(String paramString)
  {
    g = paramString;
  }
  
  @Deprecated
  public void setGender(int paramInt) {}
  
  @Deprecated
  public void setKeywords(Map<String, String> paramMap)
  {
    c = null;
  }
  
  @Deprecated
  public void setLocation(float paramFloat1, float paramFloat2) {}
  
  public void setUserCookies(Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty())) {}
    for (;;)
    {
      return;
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        if ((localEntry.getKey() != null) && (localEntry.getValue() != null)) {
          b.put(localEntry.getKey(), localEntry.getValue());
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */