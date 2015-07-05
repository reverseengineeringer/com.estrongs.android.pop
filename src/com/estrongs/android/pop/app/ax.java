package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.fs.b.ap;

final class ax
  implements DialogInterface.OnDismissListener
{
  ax(ap paramap, boolean paramBoolean, Activity paramActivity) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (a.getTaskStatus() != 4) {
      a.requsestPause();
    }
    if (b) {
      c.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */