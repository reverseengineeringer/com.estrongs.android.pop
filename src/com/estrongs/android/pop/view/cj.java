package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class cj
  implements DialogInterface.OnClickListener
{
  cj(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    a.d(false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */