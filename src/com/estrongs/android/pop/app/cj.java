package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.pop.FexApplication;

class cj
  implements DialogInterface.OnDismissListener
{
  cj(FileChooserActivity paramFileChooserActivity) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (FexApplication.a().i()) {
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */