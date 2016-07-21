package com.flurry.sdk;

public enum ah
{
  private final int d;
  
  private ah(int paramInt)
  {
    d = paramInt;
  }
  
  public static ah a(int paramInt)
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
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */