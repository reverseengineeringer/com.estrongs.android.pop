package com.estrongs.fs.impl.e;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.List;

final class b
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!a.g()) {
      a.d();
    }
    String str;
    label175:
    do
    {
      return;
      str = paramIntent.getAction();
      if ("android.bluetooth.device.action.FOUND".equals(str)) {
        for (;;)
        {
          BluetoothDevice localBluetoothDevice;
          try
          {
            localBluetoothDevice = (BluetoothDevice)paramIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            str = localBluetoothDevice.getName();
            Object localObject = new StringBuilder().append("bt://");
            if (str != null)
            {
              paramIntent = str + "\n";
              paramIntent = paramIntent + localBluetoothDevice.getAddress() + "/";
              localObject = a.a(paramContext, localBluetoothDevice);
              if (str == null) {
                break label175;
              }
              paramContext = str;
              paramContext = new f(paramIntent, a.a(localBluetoothDevice), paramContext, (String)localObject);
              if (!a.h().contains(paramContext)) {
                a.h().add(paramContext);
              }
              com.estrongs.fs.a.b.a().a(paramIntent);
              return;
            }
          }
          catch (Exception paramContext)
          {
            paramContext.printStackTrace();
            return;
          }
          paramIntent = "";
          continue;
          paramContext = localBluetoothDevice.getAddress();
        }
      }
    } while (!"android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(str));
    a.a(false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */