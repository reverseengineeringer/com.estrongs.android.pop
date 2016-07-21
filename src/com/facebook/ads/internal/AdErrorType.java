package com.facebook.ads.internal;

import com.facebook.ads.AdError;

public enum AdErrorType
{
  private final int a;
  private final String b;
  private final boolean c;
  
  static
  {
    NETWORK_ERROR = new AdErrorType("NETWORK_ERROR", 1, 1000, "Network Error", true);
    NO_FILL = new AdErrorType("NO_FILL", 2, 1001, "No Fill", true);
    LOAD_TOO_FREQUENTLY = new AdErrorType("LOAD_TOO_FREQUENTLY", 3, 1002, "Ad was re-loaded too frequently", true);
    INVALID_PARAMETERS = new AdErrorType("INVALID_PARAMETERS", 4, 1003, "Ad was requested with invalid parameters", true);
    SERVER_ERROR = new AdErrorType("SERVER_ERROR", 5, 2000, "Server Error", true);
    INTERNAL_ERROR = new AdErrorType("INTERNAL_ERROR", 6, 2001, "Internal Error", true);
    START_BEFORE_INIT = new AdErrorType("START_BEFORE_INIT", 7, 2004, "initAd must be called before startAd", true);
    AD_REQUEST_FAILED = new AdErrorType("AD_REQUEST_FAILED", 8, 1111, "Facebook Ads SDK request for ads failed", false);
    AD_REQUEST_TIMEOUT = new AdErrorType("AD_REQUEST_TIMEOUT", 9, 1112, "Facebook Ads SDK request for ads timed out", false);
    PARSER_FAILURE = new AdErrorType("PARSER_FAILURE", 10, 1201, "Failed to parse Facebook Ads SDK delivery response", false);
    UNKNOWN_RESPONSE = new AdErrorType("UNKNOWN_RESPONSE", 11, 1202, "Unknown Facebook Ads SDK delivery response type", false);
  }
  
  private AdErrorType(int paramInt, String paramString, boolean paramBoolean)
  {
    a = paramInt;
    b = paramString;
    c = paramBoolean;
  }
  
  public static AdErrorType adErrorTypeFromCode(int paramInt)
  {
    AdErrorType[] arrayOfAdErrorType = values();
    int j = arrayOfAdErrorType.length;
    int i = 0;
    while (i < j)
    {
      AdErrorType localAdErrorType = arrayOfAdErrorType[i];
      if (localAdErrorType.getErrorCode() == paramInt) {
        return localAdErrorType;
      }
      i += 1;
    }
    return UNKNOWN_ERROR;
  }
  
  boolean a()
  {
    return c;
  }
  
  public AdError getAdError(String paramString)
  {
    return new b(this, paramString).b();
  }
  
  public b getAdErrorWrapper(String paramString)
  {
    return new b(this, paramString);
  }
  
  public String getDefaultErrorMessage()
  {
    return b;
  }
  
  public int getErrorCode()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.AdErrorType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */