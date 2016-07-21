package com.estrongs.android.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.view.fv;

class t
  implements DialogInterface.OnDismissListener
{
  t(r paramr) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (FexApplication.a().h()) {
      f.b(a.b.b).j("storage://");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */