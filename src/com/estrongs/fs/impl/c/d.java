package com.estrongs.fs.impl.c;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class d
  extends BroadcastReceiver
{
  d(a parama) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i;
    if ("android.bluetooth.device.action.BOND_STATE_CHANGED".equals(paramIntent.getAction()))
    {
      i = paramIntent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", 10);
      if (i != 12) {
        break label60;
      }
      if (((BluetoothDevice)paramIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE")).getAddress().equals(a.a(a))) {
        a.b(a);
      }
    }
    label60:
    while (i != 10) {
      return;
    }
    a.b(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */