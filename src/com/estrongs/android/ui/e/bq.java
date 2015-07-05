package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;

class bq
  implements DialogInterface.OnClickListener
{
  bq(bo parambo) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (paramInt == 0)
    {
      a.a.k.a(a.a.k.z(), false);
      return;
    }
    a.a.k.a(a.a.k.z(), true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */