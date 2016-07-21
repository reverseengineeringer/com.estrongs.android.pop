package com.duapps.ad.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class PackageAddReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    DuAdNetwork.a(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.PackageAddReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */