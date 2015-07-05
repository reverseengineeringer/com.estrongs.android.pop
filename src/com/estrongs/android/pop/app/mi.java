package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

class mi
  implements DialogInterface.OnDismissListener
{
  mi(mh parammh) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    UninstallMonitorActivity.a = null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.mi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */