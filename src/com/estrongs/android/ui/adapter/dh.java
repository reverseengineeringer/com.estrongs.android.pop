package com.estrongs.android.ui.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.a.a;

class dh
  implements DialogInterface.OnClickListener
{
  dh(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a(false, "sidebar");
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */