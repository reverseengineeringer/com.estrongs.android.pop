package com.estrongs.android.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.view.dp;

class k
  implements DialogInterface.OnDismissListener
{
  k(g paramg, DialogInterface.OnDismissListener paramOnDismissListener) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    g.b(b).a_();
    a.onDismiss(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */