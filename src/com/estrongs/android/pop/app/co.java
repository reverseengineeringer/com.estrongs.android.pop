package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.ui.a.w;

class co
  implements DialogInterface.OnDismissListener
{
  co(cn paramcn) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    GestureManageActivity.a(a.b.a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */