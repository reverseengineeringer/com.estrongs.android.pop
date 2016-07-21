package com.flurry.sdk;

public enum fr
{
  private String d;
  
  private fr(String paramString)
  {
    d = paramString;
  }
  
  public static fr a(String paramString)
  {
    if (b.a().equals(paramString)) {
      return b;
    }
    if (c.a().equals(paramString)) {
      return c;
    }
    return a;
  }
  
  public String a()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */