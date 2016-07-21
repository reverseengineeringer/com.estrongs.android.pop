package com.flurry.sdk;

import java.util.List;

public class cr
{
  public String a;
  public List<String> b;
  
  public String toString()
  {
    return new StringBuilder().append("\n { \n event ").append(a).append(",").append("\n").toString() + new StringBuilder().append("actions ").append(b).append("\n } \n").toString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */