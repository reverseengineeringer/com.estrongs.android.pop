package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;

public class da
{
  public String a;
  public db b;
  public String c;
  public int d;
  public int e;
  public Map<String, String> f = new HashMap();
  
  public String toString()
  {
    return new StringBuilder().append("\n { \n name ").append(a).append(",").append("\n ").toString() + new StringBuilder().append("type ").append(b).append(",").append("\n ").toString() + new StringBuilder().append("value ").append(c).append(",").append("\n ").toString() + new StringBuilder().append("width ").append(d).append(",").append("\n ").toString() + new StringBuilder().append("height ").append(e).append(",").append("\n ").toString() + new StringBuilder().append("params ").append(f).append("\n } \n").toString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */