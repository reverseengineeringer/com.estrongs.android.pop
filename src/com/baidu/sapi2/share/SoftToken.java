package com.baidu.sapi2.share;

import com.baidu.sapi2.utils.L;

public class SoftToken
{
  private static final String a = "sapi_web_connector_v1";
  
  static
  {
    try
    {
      System.loadLibrary("sapi_web_connector_v1");
      return;
    }
    catch (Throwable localThrowable)
    {
      L.e(localThrowable);
    }
  }
  
  public static native String getToken(String paramString, int paramInt);
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.SoftToken
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */