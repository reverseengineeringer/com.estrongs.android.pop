package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;

public class jw
{
  private static jw a;
  private static final String b = jw.class.getSimpleName();
  private Object c;
  
  private jw()
  {
    e();
  }
  
  public static jw a()
  {
    try
    {
      if (a == null) {
        a = new jw();
      }
      jw localjw = a;
      return localjw;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (a != null) {
        a.f();
      }
      a = null;
      return;
    }
    finally {}
  }
  
  @TargetApi(14)
  private void e()
  {
    if ((Build.VERSION.SDK_INT < 14) || (c != null)) {}
    Context localContext;
    do
    {
      return;
      localContext = js.a().c();
    } while (!(localContext instanceof Application));
    c = new jw.1(this);
    ((Application)localContext).registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)c);
  }
  
  @TargetApi(14)
  private void f()
  {
    if ((Build.VERSION.SDK_INT < 14) || (c == null)) {}
    Context localContext;
    do
    {
      return;
      localContext = js.a().c();
    } while (!(localContext instanceof Application));
    ((Application)localContext).unregisterActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)c);
    c = null;
  }
  
  public boolean c()
  {
    return c != null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */