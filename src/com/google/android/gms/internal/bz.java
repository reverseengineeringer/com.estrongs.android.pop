package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@me
public class bz
  extends Thread
{
  private boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private final Object d;
  private final by e;
  private final bx f;
  private final md g;
  private final int h;
  private final int i;
  private final int j;
  private final int k;
  private final int l;
  
  public bz(by paramby, bx parambx, md parammd)
  {
    e = paramby;
    f = parambx;
    g = parammd;
    d = new Object();
    i = ((Integer)cz.K.c()).intValue();
    j = ((Integer)cz.L.c()).intValue();
    k = ((Integer)cz.M.c()).intValue();
    l = ((Integer)cz.N.c()).intValue();
    h = ((Integer)cz.O.c()).intValue();
    setName("ContentFetchTask");
  }
  
  cd a(View paramView, bw parambw)
  {
    int m = 0;
    if (paramView == null) {
      return new cd(this, 0, 0);
    }
    if (((paramView instanceof TextView)) && (!(paramView instanceof EditText)))
    {
      paramView = ((TextView)paramView).getText();
      if (!TextUtils.isEmpty(paramView))
      {
        parambw.b(paramView.toString());
        return new cd(this, 1, 0);
      }
      return new cd(this, 0, 0);
    }
    if (((paramView instanceof WebView)) && (!(paramView instanceof qa)))
    {
      parambw.e();
      if (a((WebView)paramView, parambw)) {
        return new cd(this, 0, 1);
      }
      return new cd(this, 0, 0);
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int n = 0;
      int i1 = 0;
      while (m < paramView.getChildCount())
      {
        cd localcd = a(paramView.getChildAt(m), parambw);
        i1 += a;
        n += b;
        m += 1;
      }
      return new cd(this, i1, n);
    }
    return new cd(this, 0, 0);
  }
  
  public void a()
  {
    synchronized (d)
    {
      if (a)
      {
        b.a("Content hash thread already started, quiting...");
        return;
      }
      a = true;
      start();
      return;
    }
  }
  
  void a(Activity paramActivity)
  {
    if (paramActivity == null) {}
    Object localObject1;
    do
    {
      return;
      Object localObject2 = null;
      localObject1 = localObject2;
      if (paramActivity.getWindow() != null)
      {
        localObject1 = localObject2;
        if (paramActivity.getWindow().getDecorView() != null) {
          localObject1 = paramActivity.getWindow().getDecorView().findViewById(16908290);
        }
      }
    } while (localObject1 == null);
    a((View)localObject1);
  }
  
  void a(bw parambw, WebView paramWebView, String paramString)
  {
    parambw.d();
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = new JSONObject(paramString).optString("text");
        if (TextUtils.isEmpty(paramWebView.getTitle())) {
          break label82;
        }
        parambw.a(paramWebView.getTitle() + "\n" + paramString);
      }
      while (parambw.a())
      {
        f.b(parambw);
        return;
        label82:
        parambw.a(paramString);
      }
      return;
    }
    catch (JSONException parambw)
    {
      b.a("Json string may be malformed.");
      return;
    }
    catch (Throwable parambw)
    {
      b.a("Failed to get webview content.", parambw);
      g.a(parambw, true);
    }
  }
  
  boolean a(ActivityManager.RunningAppProcessInfo paramRunningAppProcessInfo)
  {
    return importance == 100;
  }
  
  boolean a(Context paramContext)
  {
    paramContext = (PowerManager)paramContext.getSystemService("power");
    if (paramContext == null) {
      return false;
    }
    return paramContext.isScreenOn();
  }
  
  boolean a(View paramView)
  {
    if (paramView == null) {
      return false;
    }
    paramView.post(new ca(this, paramView));
    return true;
  }
  
  boolean a(WebView paramWebView, bw parambw)
  {
    if (!tm.g()) {
      return false;
    }
    parambw.e();
    paramWebView.post(new cb(this, parambw, paramWebView));
    return true;
  }
  
  void b(View paramView)
  {
    try
    {
      bw localbw = new bw(i, j, k, l);
      paramView = a(paramView, localbw);
      localbw.f();
      if ((a == 0) && (b == 0)) {
        return;
      }
      if (((b != 0) || (localbw.h() != 0)) && ((b != 0) || (!f.a(localbw))))
      {
        f.c(localbw);
        return;
      }
    }
    catch (Exception paramView)
    {
      b.b("Exception in fetchContentOnUIThread", paramView);
      g.a(paramView, true);
    }
  }
  
  boolean b()
  {
    try
    {
      Context localContext = e.b();
      if (localContext == null) {
        return false;
      }
      Object localObject = (ActivityManager)localContext.getSystemService("activity");
      KeyguardManager localKeyguardManager = (KeyguardManager)localContext.getSystemService("keyguard");
      if ((localObject != null) && (localKeyguardManager != null))
      {
        localObject = ((ActivityManager)localObject).getRunningAppProcesses();
        if (localObject == null) {
          return false;
        }
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
          if (Process.myPid() == pid) {
            if ((a(localRunningAppProcessInfo)) && (!localKeyguardManager.inKeyguardRestrictedInputMode()))
            {
              boolean bool = a(localContext);
              if (bool) {
                return true;
              }
            }
          }
        }
        return false;
      }
    }
    catch (Throwable localThrowable)
    {
      return false;
    }
    return false;
  }
  
  public bw c()
  {
    return f.a();
  }
  
  public void d()
  {
    synchronized (d)
    {
      b = false;
      d.notifyAll();
      b.a("ContentFetchThread: wakeup");
      return;
    }
  }
  
  public void e()
  {
    synchronized (d)
    {
      b = true;
      b.a("ContentFetchThread: paused, mPause = " + b);
      return;
    }
  }
  
  public boolean f()
  {
    return b;
  }
  
  public void run()
  {
    while (!c) {
      try
      {
        if (b())
        {
          Activity localActivity = e.a();
          if (localActivity == null) {
            b.a("ContentFetchThread: no activity");
          }
        }
      }
      catch (Throwable localThrowable)
      {
        b.b("Error in ContentFetchTask", localThrowable);
        g.a(localThrowable, true);
        synchronized (d)
        {
          for (;;)
          {
            boolean bool = b;
            if (!bool) {
              break;
            }
            try
            {
              b.a("ContentFetchTask: waiting");
              d.wait();
            }
            catch (InterruptedException localInterruptedException) {}
          }
          a((Activity)???);
          for (;;)
          {
            Thread.sleep(h * 1000);
            break;
            b.a("ContentFetchTask: sleeping");
            e();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */