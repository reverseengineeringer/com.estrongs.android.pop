package com.flurry.sdk;

import java.util.Arrays;

public class iy
  extends kt
  implements ll.a
{
  private static final String e = iy.class.getSimpleName();
  private static String f = "http://data.flurry.com/aap.do";
  private static String g = "https://data.flurry.com/aap.do";
  private String h;
  private boolean i;
  
  public iy()
  {
    this(null);
  }
  
  public iy(kt.a parama)
  {
    super("Analytics", iy.class.getSimpleName());
    d = "AnalyticsData_";
    h();
    a(parama);
  }
  
  private void b(String paramString)
  {
    if ((paramString != null) && (!paramString.endsWith(".do"))) {
      kg.a(5, e, "overriding analytics agent report URL without an endpoint, are you sure?");
    }
    h = paramString;
  }
  
  private void h()
  {
    lk locallk = lk.a();
    i = ((Boolean)locallk.a("UseHttps")).booleanValue();
    locallk.a("UseHttps", this);
    kg.a(4, e, "initSettings, UseHttps = " + i);
    String str = (String)locallk.a("ReportUrl");
    locallk.a("ReportUrl", this);
    b(str);
    kg.a(4, e, "initSettings, ReportUrl = " + str);
  }
  
  public void a()
  {
    lk.a().b("UseHttps", this);
    lk.a().b("ReportUrl", this);
  }
  
  public void a(String paramString, Object paramObject)
  {
    int j = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (j)
      {
      default: 
        kg.a(6, e, "onSettingUpdate internal error!");
        return;
        if (paramString.equals("UseHttps"))
        {
          j = 0;
          continue;
          if (paramString.equals("ReportUrl")) {
            j = 1;
          }
        }
        break;
      }
    }
    i = ((Boolean)paramObject).booleanValue();
    kg.a(4, e, "onSettingUpdate, UseHttps = " + i);
    return;
    paramString = (String)paramObject;
    b(paramString);
    kg.a(4, e, "onSettingUpdate, ReportUrl = " + paramString);
  }
  
  protected void a(String paramString1, String paramString2, int paramInt)
  {
    a(new iy.2(this, paramInt));
    super.a(paramString1, paramString2, paramInt);
  }
  
  protected void a(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    String str = b();
    kg.a(4, e, "FlurryDataSender: start upload data " + Arrays.toString(paramArrayOfByte) + " with id = " + paramString1 + " to " + str);
    kn localkn = new kn();
    localkn.a(str);
    localkn.d(100000);
    localkn.a(kp.a.c);
    localkn.a("Content-Type", "application/octet-stream");
    localkn.a(new kx());
    localkn.a(paramArrayOfByte);
    localkn.a(new iy.1(this, paramString1, paramString2));
    jq.a().a(this, localkn);
  }
  
  String b()
  {
    if (h != null) {
      return h;
    }
    if (i) {
      return g;
    }
    return f;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.iy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */