package com.flurry.sdk;

import java.util.List;

public class di
{
  public int a;
  public int b;
  public List<Integer> c;
  
  public String toString()
  {
    return new StringBuilder().append("\n { \n ageRange ").append(a).append(",").append("\n ").toString() + new StringBuilder().append("gender ").append(b).append(",").append("\n ").toString() + new StringBuilder().append("personas ").append(c).append("\n } \n").toString();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */