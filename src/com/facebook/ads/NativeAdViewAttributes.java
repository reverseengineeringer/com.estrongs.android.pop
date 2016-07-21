package com.facebook.ads;

import android.graphics.Typeface;

public class NativeAdViewAttributes
{
  private Typeface a = Typeface.DEFAULT;
  private int b = -1;
  private int c = -16777216;
  private int d = -11643291;
  private int e = 0;
  private int f = -12420889;
  private int g = -12420889;
  private boolean h = true;
  
  public boolean getAutoplay()
  {
    return h;
  }
  
  public int getBackgroundColor()
  {
    return b;
  }
  
  public int getButtonBorderColor()
  {
    return g;
  }
  
  public int getButtonColor()
  {
    return e;
  }
  
  public int getButtonTextColor()
  {
    return f;
  }
  
  public int getDescriptionTextColor()
  {
    return d;
  }
  
  public int getDescriptionTextSize()
  {
    return 10;
  }
  
  public int getTitleTextColor()
  {
    return c;
  }
  
  public int getTitleTextSize()
  {
    return 16;
  }
  
  public Typeface getTypeface()
  {
    return a;
  }
  
  public NativeAdViewAttributes setAutoplay(boolean paramBoolean)
  {
    h = paramBoolean;
    return this;
  }
  
  public NativeAdViewAttributes setBackgroundColor(int paramInt)
  {
    b = paramInt;
    return this;
  }
  
  public NativeAdViewAttributes setButtonBorderColor(int paramInt)
  {
    g = paramInt;
    return this;
  }
  
  public NativeAdViewAttributes setButtonColor(int paramInt)
  {
    e = paramInt;
    return this;
  }
  
  public NativeAdViewAttributes setButtonTextColor(int paramInt)
  {
    f = paramInt;
    return this;
  }
  
  public NativeAdViewAttributes setDescriptionTextColor(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public NativeAdViewAttributes setTitleTextColor(int paramInt)
  {
    c = paramInt;
    return this;
  }
  
  public NativeAdViewAttributes setTypeface(Typeface paramTypeface)
  {
    a = paramTypeface;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAdViewAttributes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */