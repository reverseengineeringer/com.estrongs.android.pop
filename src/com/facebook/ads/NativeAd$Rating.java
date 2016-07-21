package com.facebook.ads;

import org.json.JSONObject;

public class NativeAd$Rating
{
  private final double a;
  private final double b;
  
  private NativeAd$Rating(double paramDouble1, double paramDouble2)
  {
    a = paramDouble1;
    b = paramDouble2;
  }
  
  public static Rating fromJSONObject(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {}
    double d1;
    double d2;
    do
    {
      return null;
      d1 = paramJSONObject.optDouble("value", 0.0D);
      d2 = paramJSONObject.optDouble("scale", 0.0D);
    } while ((d1 == 0.0D) || (d2 == 0.0D));
    return new Rating(d1, d2);
  }
  
  public double getScale()
  {
    return b;
  }
  
  public double getValue()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAd.Rating
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */