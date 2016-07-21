package com.flurry.sdk;

public enum iq
{
  String d;
  int e;
  
  private iq(String paramString, int paramInt)
  {
    d = paramString;
    e = paramInt;
  }
  
  public static iq a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return a;
    case 1: 
      return b;
    }
    return c;
  }
  
  public int a()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.iq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */