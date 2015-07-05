package com.estrongs.android.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.view.dp;

class u
  implements DialogInterface.OnDismissListener
{
  u(s params) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (FexApplication.a().h()) {
      g.b(a.b.b).g("storage://");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */