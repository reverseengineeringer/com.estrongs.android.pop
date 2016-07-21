package com.flurry.sdk;

public class cs
{
  public String a;
  public int b;
  public int c;
  public int d;
  
  public String toString()
  {
    return new StringBuilder().append("\n { \nsdkAssetUrl ").append(a).append(",").append("\n ").toString() + new StringBuilder().append("cacheSizeMb ").append(b).append(",").append("\n ").toString() + new StringBuilder().append("maxAssetSizeKb ").append(c).append(",").append("\n ").toString() + new StringBuilder().append("maxBitRateKbps ").append(d).append("\n } \n").toString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */