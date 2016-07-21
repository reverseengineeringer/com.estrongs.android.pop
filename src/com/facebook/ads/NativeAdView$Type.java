package com.facebook.ads;

public enum NativeAdView$Type
{
  private final int a;
  private final int b;
  
  private NativeAdView$Type(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public int getHeight()
  {
    return b;
  }
  
  public int getValue()
  {
    switch (b)
    {
    default: 
      return -1;
    case 100: 
      return 1;
    case 120: 
      return 2;
    case 300: 
      return 3;
    }
    return 4;
  }
  
  public int getWidth()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAdView.Type
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */