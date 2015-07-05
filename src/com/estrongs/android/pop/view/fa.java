package com.estrongs.android.pop.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import com.estrongs.android.ui.navigation.n;
import com.estrongs.android.view.aw;
import com.estrongs.fs.a.b;
import com.estrongs.fs.impl.usb.e;
import com.estrongs.fs.impl.usb.g;
import java.util.List;

class fa
  extends BroadcastReceiver
{
  fa(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = 0;
    Object localObject;
    try
    {
      localObject = paramIntent.getAction();
      paramIntent = (UsbDevice)paramIntent.getParcelableExtra("device");
      if (paramIntent == null) {
        return;
      }
      paramContext = FileExplorerActivity.f(a);
      if (((String)localObject).equals("android.hardware.usb.action.USB_DEVICE_ATTACHED"))
      {
        if (e.e()) {
          return;
        }
        e.a();
        paramIntent = e.a(paramIntent);
        if ((paramIntent == null) || (paramContext == null)) {
          return;
        }
        paramContext.a(paramIntent.j(), paramIntent.k());
        return;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    if (((String)localObject).equals("android.hardware.usb.action.USB_DEVICE_DETACHED"))
    {
      paramIntent = g.a(paramIntent);
      if (paramContext != null) {
        paramContext.b(paramIntent);
      }
      b.a().d(paramIntent);
      paramContext = a.x;
      for (;;)
      {
        if (i < paramContext.size())
        {
          localObject = (aw)paramContext.get(i);
          if ((localObject != null) && (((aw)localObject).c() != null) && (paramIntent != null) && (((aw)localObject).c().startsWith(paramIntent))) {
            a.b((aw)localObject);
          }
        }
        else
        {
          paramContext = e.a();
          if ((paramContext != null) && (paramContext.length != 0)) {
            break;
          }
          e.a(false);
          return;
        }
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */