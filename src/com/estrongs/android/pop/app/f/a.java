package com.estrongs.android.pop.app.f;

import android.app.Activity;
import android.content.Intent;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.bt.OBEXFtpServerService;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.kh;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.cr;
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
        com.estrongs.android.ui.view.ak.a(FexApplication.a(), 2131231073, 1);
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
      com.estrongs.fs.impl.e.a.c(h());
      h().stopService(new Intent().setClassName(h(), OBEXFtpServerService.class.getName()));
    }
    e = false;
  }
  
  public boolean a(boolean paramBoolean)
  {
    if (bk.a()) {
      if (!l()) {
        if (paramBoolean) {
          com.estrongs.android.ui.view.ak.a(FexApplication.a(), 2131231094, 1);
        }
      }
    }
    while (!paramBoolean)
    {
      return false;
      Intent localIntent;
      if (!n()) {
        if (h() != null)
        {
          localIntent = new Intent("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
          localIntent.putExtra("android.bluetooth.adapter.extra.DISCOVERABLE_DURATION", 300);
          localIntent.putExtra("android.bluetooth.adapter.extra.SCAN_MODE", 23);
        }
      }
      for (;;)
      {
        try
        {
          h().startActivityForResult(localIntent, 4106);
          return true;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          continue;
        }
        com.estrongs.android.ui.view.ak.a(FexApplication.a(), 2131231093, 1);
      }
    }
    com.estrongs.android.ui.view.ak.a(FexApplication.a(), 2131231074, 1);
    return false;
  }
  
  public boolean b()
  {
    if (bk.a())
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
          if (!com.estrongs.fs.impl.e.a.a()) {
            break;
          }
          com.estrongs.android.ui.view.ak.a(FexApplication.a(), 2131231628, 1);
        } while (h() == null);
        new kh(h(), FexApplication.a().getString(2131232182), f).show();
        return true;
      } while (h() == null);
      f = new q();
      f.setDescription(FexApplication.a().getString(2131232554));
      f.addTaskStatusChangeListener(new com.estrongs.android.pop.ak());
      new kh(h(), FexApplication.a().getString(2131232182), f).show();
      f.execute();
      d = false;
      return true;
    }
    com.estrongs.android.ui.view.ak.a(FexApplication.a(), 2131231074, 1);
    return false;
  }
  
  public void c()
  {
    if (bk.a())
    {
      if (!l()) {}
      while (e) {
        try
        {
          com.estrongs.fs.impl.e.a.e();
          if (h() != null)
          {
            Intent localIntent = new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE");
            h().startActivity(localIntent);
          }
          return;
        }
        catch (Exception localException)
        {
          com.estrongs.android.ui.view.ak.a(FexApplication.a(), 2131231094, 1);
          return;
        }
      }
      e();
      return;
    }
    com.estrongs.android.ui.view.ak.a(FexApplication.a(), 2131231074, 1);
  }
  
  public void d()
  {
    if (bk.a())
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
    com.estrongs.android.ui.view.ak.a(FexApplication.a(), 2131231074, 1);
  }
  
  public void e()
  {
    if ((e) || (m)) {
      return;
    }
    m = true;
    if (h() != null)
    {
      com.estrongs.fs.impl.e.a.b(h());
      h().startService(new Intent().setClassName(h(), OBEXFtpServerService.class.getName()));
    }
    e = true;
    Object localObject = FileExplorerActivity.X();
    if (localObject != null)
    {
      localObject = ((FileExplorerActivity)localObject).O();
      if (localObject != null) {
        ((cr)localObject).b(true);
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
        com.estrongs.fs.impl.e.a.c(h());
        h().stopService(new Intent().setClassName(h(), OBEXFtpServerService.class.getName()));
        e = false;
      }
      if (b) {
        com.estrongs.fs.impl.e.a.f();
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
    return FileExplorerActivity.W();
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
 * Qualified Name:     com.estrongs.android.pop.app.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */