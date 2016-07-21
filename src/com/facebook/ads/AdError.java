package com.facebook.ads;

import com.facebook.ads.internal.util.s;

public class AdError
{
  public static final AdError INTERNAL_ERROR = new AdError(2001, "Internal Error");
  public static final int INTERNAL_ERROR_CODE = 2001;
  public static final AdError LOAD_TOO_FREQUENTLY;
  public static final int LOAD_TOO_FREQUENTLY_ERROR_CODE = 1002;
  @Deprecated
  public static final AdError MISSING_PROPERTIES = new AdError(2002, "Native ad failed to load due to missing properties");
  public static final AdError NETWORK_ERROR = new AdError(1000, "Network Error");
  public static final int NETWORK_ERROR_CODE = 1000;
  public static final AdError NO_FILL = new AdError(1001, "No Fill");
  public static final int NO_FILL_ERROR_CODE = 1001;
  public static final AdError SERVER_ERROR;
  public static final int SERVER_ERROR_CODE = 2000;
  private final int a;
  private final String b;
  
  static
  {
    LOAD_TOO_FREQUENTLY = new AdError(1002, "Ad was re-loaded too frequently");
    SERVER_ERROR = new AdError(2000, "Server Error");
  }
  
  public AdError(int paramInt, String paramString)
  {
    String str = paramString;
    if (s.a(paramString)) {
      str = "unknown error";
    }
    a = paramInt;
    b = str;
  }
  
  public int getErrorCode()
  {
    return a;
  }
  
  public String getErrorMessage()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */