package com.estrongs.android.ui.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

class dj
  implements DialogInterface.OnDismissListener
{
  dj(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    a.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */