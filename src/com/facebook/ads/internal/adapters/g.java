package com.facebook.ads.internal.adapters;

import java.util.Locale;

public enum g
{
  private g() {}
  
  public static g a(String paramString)
  {
    if (paramString == null) {
      return a;
    }
    try
    {
      paramString = (g)Enum.valueOf(g.class, paramString.toUpperCase(Locale.getDefault()));
      return paramString;
    }
    catch (Exception paramString) {}
    return a;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */