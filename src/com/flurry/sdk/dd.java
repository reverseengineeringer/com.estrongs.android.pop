package com.flurry.sdk;

import java.util.Map;

public class dd
{
  public String a;
  public Map<String, String> b;
  public long c;
  
  public String toString()
  {
    return new StringBuilder().append("\n { \n type ").append(a).append(",").append("\n ").toString() + new StringBuilder().append("params ").append(b).append(",").append("\n ").toString() + new StringBuilder().append("timeOffset ").append(c).append("\n } \n").toString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */