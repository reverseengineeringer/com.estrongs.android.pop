package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;

public class js
{
  private static js a;
  private static final String b = js.class.getSimpleName();
  private final Context c;
  private final Handler d;
  private final Handler e;
  private final HandlerThread f;
  private final String g;
  private final ki h;
  
  private js(Context paramContext, String paramString)
  {
    c = paramContext.getApplicationContext();
    d = new Handler(Looper.getMainLooper());
    f = new HandlerThread("FlurryAgent");
    f.start();
    e = new Handler(f.getLooper());
    g = paramString;
    h = new ki();
  }
  
  public static js a()
  {
    return a;
  }
  
  private void a(Context paramContext)
  {
    h.a(paramContext);
  }
  
  public static void a(Context paramContext, String paramString)
  {
    try
    {
      if (a != null)
      {
        if (a.d().equals(paramString)) {
          break label88;
        }
        throw new IllegalStateException("Only one API key per application is supported!");
      }
    }
    finally {}
    if (paramContext == null) {
      throw new IllegalArgumentException("Context cannot be null");
    }
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("API key must be specified");
    }
    a = new js(paramContext, paramString);
    a.a(paramContext);
    label88:
  }
  
  /* Error */
  public static void b()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 81	com/flurry/sdk/js:a	Lcom/flurry/sdk/js;
    //   6: astore_0
    //   7: aload_0
    //   8: ifnonnull +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: getstatic 81	com/flurry/sdk/js:a	Lcom/flurry/sdk/js;
    //   18: invokespecial 115	com/flurry/sdk/js:h	()V
    //   21: aconst_null
    //   22: putstatic 81	com/flurry/sdk/js:a	Lcom/flurry/sdk/js;
    //   25: goto -14 -> 11
    //   28: astore_0
    //   29: ldc 2
    //   31: monitorexit
    //   32: aload_0
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	2	0	localjs	js
    //   28	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	7	28	finally
    //   15	25	28	finally
  }
  
  private void h()
  {
    i();
    f.quit();
  }
  
  private void i()
  {
    h.a();
  }
  
  public kj a(Class<? extends kj> paramClass)
  {
    return h.a(paramClass);
  }
  
  public void a(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      return;
    }
    d.post(paramRunnable);
  }
  
  public void a(Runnable paramRunnable, long paramLong)
  {
    if (paramRunnable == null) {
      return;
    }
    d.postDelayed(paramRunnable, paramLong);
  }
  
  public void b(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      return;
    }
    e.post(paramRunnable);
  }
  
  public void b(Runnable paramRunnable, long paramLong)
  {
    if (paramRunnable == null) {
      return;
    }
    e.postDelayed(paramRunnable, paramLong);
  }
  
  public Context c()
  {
    return c;
  }
  
  public void c(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      return;
    }
    e.removeCallbacks(paramRunnable);
  }
  
  public String d()
  {
    return g;
  }
  
  public PackageManager e()
  {
    return c.getPackageManager();
  }
  
  public Handler f()
  {
    return d;
  }
  
  public Handler g()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.js
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */