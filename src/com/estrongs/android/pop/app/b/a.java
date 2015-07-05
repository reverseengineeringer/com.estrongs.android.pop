package com.estrongs.android.pop.app.b;

import android.app.Activity;
import android.content.Intent;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.aj;
import com.estrongs.android.pop.bt.OBEXFtpServerService;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.jw;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import com.estrongs.fs.b.q;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Timer;

public class a
{
  public static boolean a = false;
  public static boolean b = false;
  public static boolean c = false;
  public static boolean d = true;
  private static a h;
  private boolean e = false;
  private q f;
  private Timer g = new Timer();
  private Object i = null;
  private Method j = null;
  private Method k = null;
  private Method l = null;
  private boolean m = false;
  
  public static a a()
  {
    if (h == null) {
      h = new a();
    }
    return h;
  }
  
  private boolean k()
  {
    if (i != null) {
      return true;
    }
    try
    {
      Class localClass = Class.forName("android.bluetooth.BluetoothAdapter");
      i = localClass.getMethod("getDefaultAdapter", new Class[0]).invoke(null, new Object[0]);
      if (i == null)
      {
        ag.a(FexApplication.a(), 2131427757, 1);
        return false;
      }
      j = localClass.getMethod("isEnabled", new Class[0]);
      k = localClass.getMethod("disable", new Class[0]);
      l = localClass.getMethod("getScanMode", new Class[0]);
      return true;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      return false;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;) {}
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  private boolean l()
  {
    try
    {
      if ((i == null) && (!k())) {
        return false;
      }
      boolean bool = ((Boolean)j.invoke(i, new Object[0])).booleanValue();
      return bool;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return false;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;) {}
    }
  }
  
  private boolean m()
  {
    try
    {
      if ((i == null) && (!k())) {
        return false;
      }
      boolean bool = ((Boolean)k.invoke(i, new Object[0])).booleanValue();
      return bool;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return false;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;) {}
    }
  }
  
  private boolean n()
  {
    try
    {
      if ((i == null) && (!k())) {
        return false;
      }
      int n = ((Integer)l.invoke(i, new Object[0])).intValue();
      if (n == 23) {}
      for (boolean bool = true;; bool = false) {
        return bool;
      }
      return false;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return false;
    }
    catch (InvocationTargetException localInvocationTargetException) {}
  }
  
  private void o()
  {
    if (!e) {
      return;
    }
    if (h() != null)
    {
      com.estrongs.fs.impl.c.a.c(h());
      h().stopService(new Intent().setClassName(h(), OBEXFtpServerService.class.getName()));
    }
    e = false;
  }
  
  public boolean a(boolean paramBoolean)
  {
    if (bd.a()) {
      if (!l()) {
        if (paramBoolean) {
          ag.a(FexApplication.a(), 2131427739, 1);
        }
      }
    }
    while (!paramBoolean)
    {
      return false;
      if (!n()) {
        if (h() != null)
        {
          Intent localIntent = new Intent("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
          localIntent.putExtra("android.bluetooth.adapter.extra.DISCOVERABLE_DURATION", 300);
          localIntent.putExtra("android.bluetooth.adapter.extra.SCAN_MODE", 23);
          h().startActivityForResult(localIntent, 268439562);
        }
      }
      for (;;)
      {
        return true;
        ag.a(FexApplication.a(), 2131428473, 1);
      }
    }
    ag.a(FexApplication.a(), 2131427929, 1);
    return false;
  }
  
  public boolean b()
  {
    if (bd.a())
    {
      if (!l())
      {
        c = true;
        c();
      }
      do
      {
        do
        {
          return true;
          if (!com.estrongs.fs.impl.c.a.a()) {
            break;
          }
          ag.a(FexApplication.a(), 2131427845, 1);
        } while (h() == null);
        new jw(h(), FexApplication.a().getString(2131427442), f).show();
        return true;
      } while (h() == null);
      f = new q();
      f.setDescription(FexApplication.a().getString(2131427740));
      f.addTaskStatusChangeListener(new aj());
      new jw(h(), FexApplication.a().getString(2131427442), f).show();
      f.execute();
      d = false;
      return true;
    }
    ag.a(FexApplication.a(), 2131427929, 1);
    return false;
  }
  
  public void c()
  {
    if (bd.a())
    {
      if (!l()) {}
      while (e) {
        try
        {
          com.estrongs.fs.impl.c.a.e();
          if (h() != null)
          {
            Intent localIntent = new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE");
            h().startActivity(localIntent);
          }
          return;
        }
        catch (Exception localException)
        {
          ag.a(FexApplication.a(), 2131427739, 1);
          return;
        }
      }
      e();
      return;
    }
    ag.a(FexApplication.a(), 2131427929, 1);
  }
  
  public void d()
  {
    if (bd.a())
    {
      if (l())
      {
        if (e) {
          o();
        }
        m();
      }
      return;
    }
    ag.a(FexApplication.a(), 2131427929, 1);
  }
  
  public void e()
  {
    if ((e) || (m)) {
      return;
    }
    m = true;
    if (h() != null)
    {
      com.estrongs.fs.impl.c.a.b(h());
      h().startService(new Intent().setClassName(h(), OBEXFtpServerService.class.getName()));
    }
    e = true;
    Object localObject = FileExplorerActivity.J();
    if (localObject != null)
    {
      localObject = ((FileExplorerActivity)localObject).y();
      if (localObject != null) {
        ((aw)localObject).b(true);
      }
    }
    f();
    m = false;
  }
  
  public boolean f()
  {
    return a(true);
  }
  
  public void g()
  {
    try
    {
      if ((h() != null) && (e))
      {
        com.estrongs.fs.impl.c.a.c(h());
        h().stopService(new Intent().setClassName(h(), OBEXFtpServerService.class.getName()));
        e = false;
      }
      if (b) {
        com.estrongs.fs.impl.c.a.f();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public Activity h()
  {
    return FileExplorerActivity.I();
  }
  
  public void i()
  {
    if (g == null) {
      g = new Timer();
    }
    g.schedule(new b(this), 302000L);
  }
  
  public void j()
  {
    if (g == null) {
      return;
    }
    try
    {
      g.cancel();
      g = null;
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */