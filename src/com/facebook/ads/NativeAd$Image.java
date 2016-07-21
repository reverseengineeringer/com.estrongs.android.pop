package com.facebook.ads;

import org.json.JSONObject;

public class NativeAd$Image
{
  private final String a;
  private final int b;
  private final int c;
  
  private NativeAd$Image(String paramString, int paramInt1, int paramInt2)
  {
    a = paramString;
    b = paramInt1;
    c = paramInt2;
  }
  
  public static Image fromJSONObject(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {}
    String str;
    do
    {
      return null;
      str = paramJSONObject.optString("url");
    } while (str == null);
    return new Image(str, paramJSONObject.optInt("width", 0), paramJSONObject.optInt("height", 0));
  }
  
  public int getHeight()
  {
    return c;
  }
  
  public String getUrl()
  {
    return a;
  }
  
  public int getWidth()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAd.Image
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */