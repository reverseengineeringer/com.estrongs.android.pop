package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.utils.w;

final class j
  implements DialogInterface.OnClickListener
{
  j(Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    try
    {
      w.a(a, "com.estrongs.locker", "pname");
      return;
    }
    catch (Exception paramDialogInterface)
    {
      paramDialogInterface.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */