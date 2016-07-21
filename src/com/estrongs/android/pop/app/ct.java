package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import com.estrongs.android.ui.adapter.y;

class ct
  implements DialogInterface.OnDismissListener
{
  ct(cs paramcs) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    GestureManageActivity.d(a.b.a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */