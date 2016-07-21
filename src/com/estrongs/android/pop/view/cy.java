package com.estrongs.android.pop.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import com.estrongs.android.ui.c.b.h;
import com.estrongs.android.ui.navigation.m;
import com.estrongs.android.util.l;
import com.estrongs.android.view.cr;
import com.estrongs.fs.a.b;
import com.estrongs.fs.impl.usb.e;
import com.estrongs.fs.impl.usb.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class cy
  extends BroadcastReceiver
{
  cy(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = 0;
    Object localObject;
    try
    {
      paramContext = paramIntent.getAction();
      localObject = (UsbDevice)paramIntent.getParcelableExtra("device");
      if (localObject == null) {
        return;
      }
      paramIntent = a.ae();
      if (!paramContext.equals("android.hardware.usb.action.USB_DEVICE_ATTACHED")) {
        break label181;
      }
      if (e.e())
      {
        l.f("checkUsbMountAble");
        return;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      l.f("usb e = " + paramContext.toString());
      return;
    }
    e.a();
    paramContext = e.a((UsbDevice)localObject);
    if ((paramContext != null) && (paramIntent != null)) {
      paramIntent.a(paramContext.j(), paramContext.k());
    }
    if (FileExplorerActivity.B(a) != null)
    {
      paramIntent = new ArrayList();
      paramIntent.add(paramContext.j());
      paramContext = FileExplorerActivity.B(a).iterator();
      while (paramContext.hasNext())
      {
        ((h)paramContext.next()).a(paramIntent);
        continue;
        label181:
        if (paramContext.equals("android.hardware.usb.action.USB_DEVICE_DETACHED"))
        {
          paramContext = g.a((UsbDevice)localObject);
          if (paramIntent != null) {
            paramIntent.b(paramContext);
          }
          b.a().d(paramContext);
          paramIntent = a.w;
          for (;;)
          {
            if (i < paramIntent.size())
            {
              localObject = (cr)paramIntent.get(i);
              if ((localObject != null) && (((cr)localObject).c() != null) && (paramContext != null) && (((cr)localObject).c().startsWith(paramContext))) {
                a.b((cr)localObject);
              }
            }
            else
            {
              paramIntent = e.a();
              if ((paramIntent == null) || (paramIntent.length == 0)) {
                e.a(false);
              }
              if (FileExplorerActivity.B(a) == null) {
                break;
              }
              paramIntent = new ArrayList();
              paramIntent.add(paramContext);
              paramContext = FileExplorerActivity.B(a).iterator();
              while (paramContext.hasNext()) {
                ((h)paramContext.next()).b(paramIntent);
              }
            }
            i += 1;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */