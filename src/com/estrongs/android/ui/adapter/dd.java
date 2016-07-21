package com.estrongs.android.ui.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

class dd
  implements DialogInterface.OnKeyListener
{
  dd(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    return paramInt == 4;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */