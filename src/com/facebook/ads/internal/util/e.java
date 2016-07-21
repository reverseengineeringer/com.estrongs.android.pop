package com.facebook.ads.internal.util;

import java.util.Locale;

public enum e
{
  private e() {}
  
  public static e a(String paramString)
  {
    if (s.a(paramString)) {
      return a;
    }
    try
    {
      paramString = valueOf(paramString.toUpperCase(Locale.US));
      return paramString;
    }
    catch (IllegalArgumentException paramString) {}
    return a;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.util.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */