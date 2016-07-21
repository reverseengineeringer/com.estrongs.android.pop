package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class ay
{
  private static int a = 1;
  private int b;
  private long c;
  private String d;
  private List<ax> e;
  
  private ay() {}
  
  public ay(String paramString)
  {
    int i = a;
    a = i + 1;
    b = i;
    c = je.a().d();
    d = paramString;
    e = new ArrayList();
  }
  
  public int a()
  {
    return b;
  }
  
  public void a(ax paramax)
  {
    e.add(paramax);
  }
  
  public String b()
  {
    return d;
  }
  
  public long c()
  {
    return c;
  }
  
  public List<ax> d()
  {
    return e;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ay)) {
        return false;
      }
      paramObject = (ay)paramObject;
    } while ((b == b) && (c == c) && (TextUtils.equals(d, d)) && ((e == e) || ((e != null) && (e.equals(e)))));
    return false;
  }
  
  public int hashCode()
  {
    int j = (int)(0x11 ^ b ^ c);
    int i = j;
    if (d != null) {
      i = j ^ d.hashCode();
    }
    j = i;
    if (e != null) {
      j = i ^ e.hashCode();
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */