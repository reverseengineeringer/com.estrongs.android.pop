package com.flurry.sdk;

public enum al
{
  private final int h;
  
  private al(int paramInt)
  {
    h = paramInt;
  }
  
  public static al a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return a;
    case 1: 
      return b;
    case 2: 
      return c;
    case 3: 
      return d;
    case 4: 
      return e;
    case 5: 
      return f;
    }
    return g;
  }
  
  public int a()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */