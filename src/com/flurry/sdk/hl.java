package com.flurry.sdk;

import android.content.Context;
import com.flurry.android.FlurryEventRecordStatus;
import java.util.Map;

public class hl
  implements kj
{
  private static final String a = hl.class.getSimpleName();
  private ig b;
  private iy c;
  private ii d;
  
  public static hl a()
  {
    try
    {
      hl localhl = (hl)js.a().a(hl.class);
      return localhl;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private jb a(lf paramlf)
  {
    if (paramlf == null) {
      return null;
    }
    return (jb)paramlf.c(jb.class);
  }
  
  private void b(Context paramContext)
  {
    if (!lt.a(paramContext, "android.permission.INTERNET")) {
      kg.b(a, "Application must declare permission: android.permission.INTERNET");
    }
    if (!lt.a(paramContext, "android.permission.ACCESS_NETWORK_STATE")) {
      kg.e(a, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE");
    }
  }
  
  private jb h()
  {
    return a(lh.a().e());
  }
  
  public FlurryEventRecordStatus a(String paramString)
  {
    jb localjb = h();
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (localjb != null) {
      localFlurryEventRecordStatus = localjb.a(paramString, null, false);
    }
    return localFlurryEventRecordStatus;
  }
  
  public FlurryEventRecordStatus a(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    jb localjb = h();
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (localjb != null) {
      localFlurryEventRecordStatus = localjb.a(paramString1, paramString2, paramMap, false);
    }
    return localFlurryEventRecordStatus;
  }
  
  public FlurryEventRecordStatus a(String paramString, Map<String, String> paramMap)
  {
    jb localjb = h();
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (localjb != null) {
      localFlurryEventRecordStatus = localjb.a(paramString, paramMap, false);
    }
    return localFlurryEventRecordStatus;
  }
  
  public FlurryEventRecordStatus a(String paramString, Map<String, String> paramMap, boolean paramBoolean)
  {
    jb localjb = h();
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (localjb != null) {
      localFlurryEventRecordStatus = localjb.a(paramString, paramMap, paramBoolean);
    }
    return localFlurryEventRecordStatus;
  }
  
  public FlurryEventRecordStatus a(String paramString, boolean paramBoolean)
  {
    jb localjb = h();
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (localjb != null) {
      localFlurryEventRecordStatus = localjb.a(paramString, null, paramBoolean);
    }
    return localFlurryEventRecordStatus;
  }
  
  public void a(Context paramContext)
  {
    lf.a(jb.class);
    c = new iy();
    b = new ig();
    d = new ii();
    b(paramContext);
  }
  
  @Deprecated
  public void a(String paramString1, String paramString2, String paramString3)
  {
    Object localObject1 = Thread.currentThread().getStackTrace();
    Object localObject2;
    if ((localObject1 != null) && (localObject1.length > 2))
    {
      localObject2 = new StackTraceElement[localObject1.length - 2];
      System.arraycopy(localObject1, 2, localObject2, 0, localObject2.length);
      localObject1 = localObject2;
    }
    for (;;)
    {
      localObject2 = new Throwable(paramString2);
      ((Throwable)localObject2).setStackTrace((StackTraceElement[])localObject1);
      localObject1 = h();
      if (localObject1 != null) {
        ((jb)localObject1).a(paramString1, paramString2, paramString3, (Throwable)localObject2);
      }
      return;
    }
  }
  
  public void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    jb localjb = h();
    if (localjb != null) {
      localjb.a(paramString1, paramString2, paramThrowable.getClass().getName(), paramThrowable);
    }
  }
  
  public FlurryEventRecordStatus b(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    jb localjb = h();
    FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventFailed;
    if (localjb != null) {
      localFlurryEventRecordStatus = localjb.a(paramString1, jd.a(paramString2), paramMap, false);
    }
    return localFlurryEventRecordStatus;
  }
  
  public void b()
  {
    if (d != null)
    {
      d.c();
      d = null;
    }
    if (c != null)
    {
      c.a();
      c = null;
    }
    if (b != null)
    {
      b.a();
      b = null;
    }
    lf.b(jb.class);
  }
  
  public void b(String paramString)
  {
    jb localjb = h();
    if (localjb != null) {
      localjb.a(paramString, null);
    }
  }
  
  public void b(String paramString, Map<String, String> paramMap)
  {
    jb localjb = h();
    if (localjb != null) {
      localjb.a(paramString, paramMap);
    }
  }
  
  public ig c()
  {
    return b;
  }
  
  public void c(String paramString)
  {
    jb localjb = h();
    if (localjb != null) {
      localjb.a(paramString, null, false);
    }
  }
  
  public void c(String paramString, Map<String, String> paramMap)
  {
    jb localjb = h();
    if (localjb != null) {
      localjb.a(paramString, paramMap, false);
    }
  }
  
  public iy d()
  {
    return c;
  }
  
  public ii e()
  {
    return d;
  }
  
  public void f()
  {
    jb localjb = h();
    if (localjb != null) {
      localjb.a();
    }
  }
  
  public void g()
  {
    jb localjb = h();
    if (localjb != null) {
      localjb.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */