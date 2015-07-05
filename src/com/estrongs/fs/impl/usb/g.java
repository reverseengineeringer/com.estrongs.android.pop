package com.estrongs.fs.impl.usb;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.os.Build.VERSION;
import android.util.Log;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.z;
import com.estrongs.fs.impl.usb.a.c;
import com.estrongs.fs.impl.usb.a.d;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class g
{
  private static final String a = g.class.getSimpleName();
  private static int b = 2000;
  private static int c = 200000;
  private static Context m = FexApplication.a();
  private static Object n = new Object();
  private UsbManager d;
  private UsbDeviceConnection e;
  private UsbDevice f;
  private UsbInterface g;
  private UsbEndpoint h;
  private UsbEndpoint i;
  private com.estrongs.fs.impl.usb.driver.a j;
  private c k;
  private List<com.estrongs.fs.impl.usb.a.b> l = new ArrayList();
  private k o = null;
  private boolean p = false;
  private BroadcastReceiver q = null;
  private boolean r = false;
  private Exception s = null;
  
  private g(UsbManager paramUsbManager, UsbDevice paramUsbDevice, UsbInterface paramUsbInterface, UsbEndpoint paramUsbEndpoint1, UsbEndpoint paramUsbEndpoint2)
  {
    d = paramUsbManager;
    f = paramUsbDevice;
    g = paramUsbInterface;
    h = paramUsbEndpoint1;
    i = paramUsbEndpoint2;
  }
  
  private a a(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return new j(this, paramInt);
    }
    return new i(this, paramInt);
  }
  
  public static String a(UsbDevice paramUsbDevice)
  {
    return "usb://" + paramUsbDevice.getDeviceId() + "/";
  }
  
  public static g[] a()
  {
    UsbManager localUsbManager = (UsbManager)m.getSystemService("usb");
    ArrayList localArrayList = new ArrayList();
    UsbDevice localUsbDevice;
    int i1;
    UsbInterface localUsbInterface;
    label141:
    int i2;
    UsbEndpoint localUsbEndpoint3;
    if (localUsbManager != null)
    {
      try
      {
        Iterator localIterator = localUsbManager.getDeviceList().values().iterator();
        int i3;
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          localUsbDevice = (UsbDevice)localIterator.next();
          i3 = localUsbDevice.getInterfaceCount();
          i1 = 0;
        } while (i1 >= i3);
        localUsbInterface = localUsbDevice.getInterface(i1);
        if ((localUsbInterface.getInterfaceClass() != 8) || (localUsbInterface.getInterfaceSubclass() != 6) || (localUsbInterface.getInterfaceProtocol() != 80)) {
          break label224;
        }
        i4 = localUsbInterface.getEndpointCount();
        if (i4 == 2) {
          break label231;
        }
        Log.e(a, "inteface endpoint count != 2");
      }
      catch (Exception localException)
      {
        int i4;
        UsbEndpoint localUsbEndpoint1;
        localException.printStackTrace();
      }
      if (i2 >= i4) {
        break label256;
      }
      localUsbEndpoint3 = localUsbInterface.getEndpoint(i2);
      if (localUsbEndpoint3.getDirection() != 0) {
        break label249;
      }
      localUsbEndpoint1 = localUsbEndpoint3;
    }
    for (;;)
    {
      label169:
      Log.e(a, "Not all needed endpoints found!");
      break label224;
      return (g[])localArrayList.toArray(new g[0]);
      UsbEndpoint localUsbEndpoint2;
      label224:
      label231:
      label249:
      label256:
      do
      {
        localArrayList.add(new g(localUsbManager, localUsbDevice, localUsbInterface, localUsbEndpoint2, localException));
        i1 += 1;
        break;
        i2 = 0;
        localUsbEndpoint2 = null;
        Object localObject = null;
        break label141;
        for (;;)
        {
          i2 += 1;
          break;
          localUsbEndpoint2 = localUsbEndpoint3;
        }
        if (localObject == null) {
          break label169;
        }
      } while (localUsbEndpoint2 != null);
    }
  }
  
  private void n()
  {
    if (!p)
    {
      d();
      c();
    }
  }
  
  private void o()
  {
    q();
    e = d.openDevice(f);
    if (e == null)
    {
      Log.e(a, "deviceConnetion is null!");
      return;
    }
    if (!e.claimInterface(g, true))
    {
      Log.e(a, "could not claim interface!");
      return;
    }
    j = com.estrongs.fs.impl.usb.driver.b.a(a(b));
    j.a();
    k = com.estrongs.fs.impl.usb.a.e.a(j);
    if (k == null) {
      throw new UsbFsException("unsupported mbr type", UsbFsException.ERROR_CODE.USB_ERROR_TYPE_NOT_SUPPORTE);
    }
    p();
    if ((j instanceof com.estrongs.fs.impl.usb.driver.scsi.b))
    {
      a locala = a(c);
      ((com.estrongs.fs.impl.usb.driver.scsi.b)j).a(locala);
    }
    p = true;
  }
  
  private void p()
  {
    Iterator localIterator = k.a().iterator();
    Object localObject1 = null;
    Object localObject2 = null;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        Object localObject3 = (d)localIterator.next();
        try
        {
          localObject3 = com.estrongs.fs.impl.usb.a.b.a(f.getDeviceId() + "", (d)localObject3, j);
          if (localObject3 != null) {
            l.add(localObject3);
          }
        }
        catch (UsbFsException localUsbFsException)
        {
          for (;;)
          {
            localUsbFsException.printStackTrace();
            localObject3 = null;
          }
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            localIOException.printStackTrace();
            localObject3 = null;
          }
        }
      }
    }
    if (l.size() == 0)
    {
      if (localUsbFsException != null) {
        throw localUsbFsException;
      }
      if (localIOException != null) {
        throw localIOException;
      }
    }
  }
  
  private void q()
  {
    synchronized (n)
    {
      if (e == null) {
        return;
      }
      if (!e.releaseInterface(g)) {
        Log.e(a, "could not release interface!");
      }
      e.close();
      e = null;
      return;
    }
  }
  
  public void a(k paramk)
  {
    synchronized (n)
    {
      IntentFilter localIntentFilter = new IntentFilter("com.estrongs.fs.impl.usb.USB_PERMISSION");
      if (q != null) {
        m.unregisterReceiver(q);
      }
      q = new h(this);
      m.registerReceiver(q, localIntentFilter);
      o = paramk;
      paramk = PendingIntent.getBroadcast(m, 0, new Intent("com.estrongs.fs.impl.usb.USB_PERMISSION"), 0);
      d.requestPermission(f, paramk);
      return;
    }
  }
  
  public boolean b()
  {
    return d.hasPermission(f);
  }
  
  public void c()
  {
    synchronized (n)
    {
      if (p) {
        return;
      }
      d();
      boolean bool = d.hasPermission(f);
      if (!bool) {
        break label93;
      }
    }
    try
    {
      o();
      if (s != null)
      {
        d();
        return;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
    }
    catch (Exception localException)
    {
      do
      {
        for (;;)
        {
          localException.printStackTrace();
          s = localException;
        }
      } while (p);
      throw new UsbFsException("fail to connect usb device", UsbFsException.ERROR_CODE.USB_ERROR_OPERATION_FAILED);
    }
    label93:
    throw new UsbFsException("Missing permission to access device", UsbFsException.ERROR_CODE.USB_ERROR_OPERATION_FAILED);
  }
  
  public void d()
  {
    if (s != null)
    {
      if ((s instanceof UsbFsException)) {
        throw ((UsbFsException)s);
      }
      if ((s instanceof IOException)) {
        throw new UsbFsException(s.getMessage(), UsbFsException.ERROR_CODE.USB_ERROR_IO_ERROR);
      }
      throw new UsbFsException(s.getMessage(), UsbFsException.ERROR_CODE.USB_ERROR_OPERATION_FAILED);
    }
  }
  
  public void e()
  {
    if (!p) {}
    do
    {
      return;
      p = false;
      q();
    } while (q == null);
    m.unregisterReceiver(q);
  }
  
  public void f()
  {
    r = true;
  }
  
  public boolean g()
  {
    return r;
  }
  
  public List<com.estrongs.fs.impl.usb.a.b> h()
  {
    n();
    return l;
  }
  
  public String i()
  {
    return f.getDeviceId() + "";
  }
  
  public String j()
  {
    return "usb://" + f.getDeviceId() + "/";
  }
  
  public String k()
  {
    g[] arrayOfg = e.b();
    if ((arrayOfg != null) && (1 == arrayOfg.length) && (z.A != null)) {
      return z.A;
    }
    return "USB" + f.getDeviceId();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */