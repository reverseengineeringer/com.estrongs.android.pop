package com.flurry.sdk;

import android.location.Criteria;
import android.location.Location;

public class lk
  extends ll
{
  public static final Integer a = Integer.valueOf(216);
  public static final Integer b = Integer.valueOf(6);
  public static final Integer c = Integer.valueOf(2);
  public static final Integer d = Integer.valueOf(0);
  public static final String e = null;
  public static final Boolean f = Boolean.valueOf(true);
  public static final Boolean g = Boolean.valueOf(true);
  public static final String h = null;
  public static final Boolean i = Boolean.valueOf(true);
  public static final Criteria j = null;
  public static final Location k = null;
  public static final Long l = Long.valueOf(10000L);
  public static final Boolean m = Boolean.valueOf(true);
  public static final Long n = null;
  public static final Byte o = Byte.valueOf((byte)-1);
  public static final Boolean p = Boolean.valueOf(false);
  public static final String q = null;
  public static final Boolean r = Boolean.valueOf(true);
  private static lk s;
  
  private lk()
  {
    c();
  }
  
  public static lk a()
  {
    try
    {
      if (s == null) {
        s = new lk();
      }
      lk locallk = s;
      return locallk;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (s != null) {
        s.d();
      }
      s = null;
      return;
    }
    finally {}
  }
  
  public void c()
  {
    a("AgentVersion", a);
    a("ReleaseMajorVersion", b);
    a("ReleaseMinorVersion", c);
    a("ReleasePatchVersion", d);
    a("ReleaseBetaVersion", "");
    a("VersionName", e);
    a("CaptureUncaughtExceptions", f);
    a("UseHttps", g);
    a("ReportUrl", h);
    a("ReportLocation", i);
    a("ExplicitLocation", k);
    a("ContinueSessionMillis", l);
    a("LogEvents", m);
    a("Age", n);
    a("Gender", o);
    a("UserId", "");
    a("ProtonEnabled", p);
    a("ProtonConfigUrl", q);
    a("analyticsEnabled", r);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.lk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */