package com.flurry.android;

public class AdCreative
{
  public static final String kAlignmentBottom = "bottom";
  public static final String kAlignmentCenter = "center";
  public static final String kAlignmentLeft = "left";
  public static final String kAlignmentMiddle = "middle";
  public static final String kAlignmentRight = "right";
  public static final String kAlignmentTop = "top";
  public static final String kFixBoth = "both";
  public static final String kFixHeight = "height";
  public static final String kFixNone = "none";
  public static final String kFixWidth = "width";
  public static final String kFormatBanner = "banner";
  public static final String kFormatCustom = "custom";
  public static final String kFormatTakeover = "takeover";
  private int a;
  private int b;
  private String c;
  private String d;
  private String e;
  
  public AdCreative(int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramString1;
    d = paramString2;
    e = paramString3;
  }
  
  public String getAlignment()
  {
    return e;
  }
  
  public String getFix()
  {
    return d;
  }
  
  public String getFormat()
  {
    return c;
  }
  
  public int getHeight()
  {
    return a;
  }
  
  public int getWidth()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.AdCreative
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */