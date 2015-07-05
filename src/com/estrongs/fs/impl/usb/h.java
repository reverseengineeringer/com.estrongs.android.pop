package com.estrongs.fs.impl.usb;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;

class h
  extends BroadcastReceiver
{
  h(g paramg) {}
  
  @TargetApi(12)
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.estrongs.fs.impl.usb.USB_PERMISSION".equals(paramIntent.getAction()))
    {
      paramContext = (UsbDevice)paramIntent.getParcelableExtra("device");
      if ((paramContext != null) && (paramContext.getDeviceId() == g.e(a).getDeviceId()) && (g.f(a) != null)) {
        g.f(a).a(paramIntent.getBooleanExtra("permission", false));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */