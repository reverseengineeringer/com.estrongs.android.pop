package com.flurry.sdk;

import java.util.List;

public class cy
{
  public List<Integer> a;
  public List<String> b;
  
  public String toString()
  {
    return new StringBuilder().append("\n { \n requestedStyles ").append(a).append(",").append("\n ").toString() + new StringBuilder().append("requestedAssets ").append(b).append("\n } \n ").toString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */