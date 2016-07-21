package com.estrongs.android.pop.app.unlock;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

class u
  implements DialogInterface.OnClickListener
{
  u(s params) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ad.a(s.a(a)).A(true);
    paramDialogInterface.dismiss();
    try
    {
      ESActivity.I();
      FileExplorerActivity.X().ah();
      return;
    }
    catch (Exception paramDialogInterface)
    {
      paramDialogInterface.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */