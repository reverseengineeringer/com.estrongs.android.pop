package com.estrongs.android.pop.app.unlock;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;

class w
  implements DialogInterface.OnClickListener
{
  w(s params) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ad.a(s.a(a)).y(true);
    paramDialogInterface.dismiss();
    try
    {
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
 * Qualified Name:     com.estrongs.android.pop.app.unlock.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */