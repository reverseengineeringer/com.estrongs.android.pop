package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.estrongs.android.pop.ftp.ESFtpShortcut;

class ld
  implements DialogInterface.OnClickListener
{
  ld(ShowDialogActivity paramShowDialogActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      Intent localIntent = new Intent(a, ESFtpShortcut.class);
      localIntent.putExtra("mode", 2);
      a.startActivity(localIntent);
      paramDialogInterface.dismiss();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */