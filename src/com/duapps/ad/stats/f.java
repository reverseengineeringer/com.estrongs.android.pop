package com.duapps.ad.stats;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.duapps.ad.base.l;

class f
  implements DialogInterface.OnCancelListener
{
  f(c paramc) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (l.a()) {
      l.c("ToolClickHandler", "User Canceled Dialog.");
    }
    a.b();
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */