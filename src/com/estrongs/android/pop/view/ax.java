package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.FexApplication;

class ax
  implements DialogInterface.OnClickListener
{
  ax(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    FexApplication.a().a(false);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */