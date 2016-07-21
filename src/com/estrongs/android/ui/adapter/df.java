package com.estrongs.android.ui.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

class df
  implements DialogInterface.OnDismissListener
{
  df(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    a.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */