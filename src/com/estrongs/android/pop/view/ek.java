package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class ek
  implements DialogInterface.OnClickListener
{
  ek(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.settings.WIFI_SETTINGS");
    localIntent.setFlags(268435456);
    a.startActivity(localIntent);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */