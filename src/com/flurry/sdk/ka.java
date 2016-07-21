package com.flurry.sdk;

import android.text.TextUtils;

public abstract class ka
{
  protected String g = "com.flurry.android.sdk.ReplaceMeWithAProperEventName";
  
  public ka(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Event must have a name!");
    }
    g = paramString;
  }
  
  public String a()
  {
    return g;
  }
  
  public void b()
  {
    kc.a().a(this);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */