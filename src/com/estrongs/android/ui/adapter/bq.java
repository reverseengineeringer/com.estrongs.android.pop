package com.estrongs.android.ui.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.view.ak;

class bq
  implements DialogInterface.OnClickListener
{
  bq(bp parambp) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    boolean bool = true;
    if ((paramInt == 0) || (paramInt == 1)) {
      if (paramInt == 0) {
        if (bool != ListAdapter_NewNavi.g(a.a).aE())
        {
          ListAdapter_NewNavi.g(a.a).s(bool);
          if (bool) {
            ak.a(ListAdapter_NewNavi.a(a.a), 2131231348, 0);
          }
          a.a.c();
        }
      }
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      bool = false;
      break;
      if (paramInt == 2) {
        ListAdapter_NewNavi.c(ListAdapter_NewNavi.a(a.a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */