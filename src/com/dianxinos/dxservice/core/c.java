package com.dianxinos.dxservice.core;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import com.dianxinos.dxservice.stat.t;
import java.util.concurrent.CopyOnWriteArrayList;

public class c
{
  private static volatile c f;
  private Context a;
  private boolean b;
  private Messenger c;
  private CopyOnWriteArrayList<t> d;
  private boolean e;
  private ServiceConnection g = new d(this);
  
  private c(Context paramContext)
  {
    a = paramContext.getApplicationContext();
    b = false;
    c = null;
    d = new CopyOnWriteArrayList();
    e = false;
    a();
  }
  
  public static c a(Context paramContext)
  {
    try
    {
      if (f == null) {
        f = new c(paramContext);
      }
      return f;
    }
    finally {}
  }
  
  private boolean a(Message paramMessage)
  {
    try
    {
      c.send(paramMessage);
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      if (com.dianxinos.dxservice.a.c.e) {
        Log.e("stat.DXServiceInterator", paramMessage.toString() + " has RemoteException!", localRemoteException);
      }
      return false;
    }
    catch (Exception localException)
    {
      if (com.dianxinos.dxservice.a.c.e) {
        Log.e("stat.DXServiceInterator", paramMessage.toString() + " has Exception!", localException);
      }
    }
    return false;
  }
  
  private void c()
  {
    a.bindService(new Intent(a, DXCoreService.class), g, 1);
  }
  
  public void a()
  {
    if (com.dianxinos.dxservice.a.c.d) {
      Log.i("stat.DXServiceInterator", "Start to bind!");
    }
    c();
  }
  
  public boolean a(int paramInt)
  {
    if (!b)
    {
      if (com.dianxinos.dxservice.a.c.d) {
        Log.i("stat.DXServiceInterator", "Service haven't bind.The status change trigger will be ignored!");
      }
      return true;
    }
    return a(Message.obtain(null, paramInt));
  }
  
  public boolean a(t paramt)
  {
    if (!b)
    {
      if (com.dianxinos.dxservice.a.c.d) {
        Log.i("stat.DXServiceInterator", "Service haven't bind.The event " + paramt.toString() + " will send again when service is bound!");
      }
      d.add(paramt);
      return true;
    }
    Message localMessage = Message.obtain(null, 1);
    localMessage.setData(paramt.a());
    return a(localMessage);
  }
  
  public boolean b()
  {
    if (!b)
    {
      if (com.dianxinos.dxservice.a.c.d) {
        Log.i("stat.DXServiceInterator", "Service haven't bind.When is bound,it will send again!");
      }
      e = true;
      return true;
    }
    return a(Message.obtain(null, 2));
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.core.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */