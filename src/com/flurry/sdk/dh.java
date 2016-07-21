package com.flurry.sdk;

public class dh
{
  public String a;
  public String b;
  public long c;
  
  public String toString()
  {
    return new StringBuilder().append("\n { \n adId ").append(a).append(",").append("\n ").toString() + new StringBuilder().append("lastEvent ").append(b).append(",").append("\n ").toString() + new StringBuilder().append("renderedTime ").append(c).append("\n } \n").toString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */