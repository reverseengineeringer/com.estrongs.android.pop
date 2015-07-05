package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

class z
  implements DialogInterface.OnDismissListener
{
  z(y paramy) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    a.b.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */