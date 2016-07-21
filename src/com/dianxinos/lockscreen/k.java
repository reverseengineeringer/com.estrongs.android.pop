package com.dianxinos.lockscreen;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

class k
  extends BroadcastReceiver
{
  k(j paramj) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (TextUtils.equals(paramIntent.getStringExtra("extra_package_name"), paramContext.getPackageName())) {
      j.a(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */