package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

class bo
  implements DialogInterface.OnDismissListener
{
  bo(ESFileSharingActivity paramESFileSharingActivity) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (ESFileSharingActivity.a(a)) {
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */