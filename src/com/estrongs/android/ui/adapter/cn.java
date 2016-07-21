package com.estrongs.android.ui.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;

class cn
  implements DialogInterface.OnClickListener
{
  cn(cm paramcm) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == 0) {
      ListAdapter_NewNavi.a(a.a.d).d(a.a.c.b());
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (paramInt == 1) {
        ListAdapter_NewNavi.a(a.a.d).b(a.a.c.b());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */