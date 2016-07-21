package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.FexApplication;

class y
  implements DialogInterface.OnClickListener
{
  y(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    FexApplication.a().a(false);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */