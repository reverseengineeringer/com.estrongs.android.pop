package com.flurry.sdk;

public class ec
  extends ka
{
  public static final String a = ec.class.getName();
  public ec.a b = ec.a.b;
  public int c;
  public ed d = ed.a;
  public String e = "";
  public Long f;
  
  public ec()
  {
    super("com.flurry.android.impl.analytics.tumblr.TumblrEvents");
  }
  
  public static void a(int paramInt, Long paramLong)
  {
    kg.a(5, a, "Post success:" + paramLong + " and " + paramInt);
    ec localec = new ec();
    c = paramInt;
    f = paramLong;
    b = ec.a.a;
    localec.b();
  }
  
  public static void a(ed paramed, int paramInt, String paramString)
  {
    kg.a(5, a, "Post failure:" + paramed + " and " + paramInt);
    ec localec = new ec();
    d = paramed;
    c = paramInt;
    e = paramString;
    b = ec.a.b;
    localec.b();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */