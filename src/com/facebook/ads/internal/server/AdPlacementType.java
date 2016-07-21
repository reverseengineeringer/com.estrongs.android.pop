package com.facebook.ads.internal.server;

import com.facebook.ads.internal.util.s;
import java.util.Locale;

public enum AdPlacementType
{
  private String a;
  
  private AdPlacementType(String paramString)
  {
    a = paramString;
  }
  
  public static AdPlacementType fromString(String paramString)
  {
    if (s.a(paramString)) {
      return UNKNOWN;
    }
    try
    {
      paramString = valueOf(paramString.toUpperCase(Locale.US));
      return paramString;
    }
    catch (Exception paramString) {}
    return UNKNOWN;
  }
  
  public String toString()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.server.AdPlacementType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */