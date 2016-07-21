package com.estrongs.android.ui.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class di
  implements DialogInterface.OnClickListener
{
  di(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */