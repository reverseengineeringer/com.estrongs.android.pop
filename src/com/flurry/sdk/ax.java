package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ax
{
  static final List<String> a = Arrays.asList(new String[] { "requested", "filled", "unfilled", "rendered", "clicked", "prepared", "adunitMerged", "sendUrlStatusResult", "videoStart", "videoFirstQuartile", "videoMidpoint", "videoThirdQuartile", "videoCompleted", "videoProgressed", "videoView", "videoClosed", "sentToUrl", "pageLoadFinished", "adClosed", "adWillClose", "renderFailed", "requestAdComponents", "urlVerified", "capExhausted", "capNotExhausted", "adExpanded", "adCollapsed" });
  private static final String b = ax.class.getSimpleName();
  private String c;
  private boolean d;
  private long e;
  private Map<String, String> f;
  
  private ax() {}
  
  public ax(String paramString, boolean paramBoolean, long paramLong, Map<String, String> paramMap)
  {
    if (!a.contains(paramString)) {
      kg.a(b, "AdEvent initialized with unrecognized type: " + paramString);
    }
    c = paramString;
    d = paramBoolean;
    e = paramLong;
    if (paramMap == null)
    {
      f = new HashMap();
      return;
    }
    f = paramMap;
  }
  
  public String a()
  {
    return c;
  }
  
  public boolean b()
  {
    return d;
  }
  
  public long c()
  {
    return e;
  }
  
  public Map<String, String> d()
  {
    return f;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ax)) {
        return false;
      }
      paramObject = (ax)paramObject;
    } while ((TextUtils.equals(c, c)) && (d == d) && (e == e) && ((f == f) || ((f != null) && (f.equals(f)))));
    return false;
  }
  
  public int hashCode()
  {
    int i = 17;
    if (c != null) {
      i = 0x11 ^ c.hashCode();
    }
    int j = i;
    if (d) {
      j = i ^ 0x1;
    }
    j = (int)(j ^ e);
    i = j;
    if (f != null) {
      i = j ^ f.hashCode();
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */