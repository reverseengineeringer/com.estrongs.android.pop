package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class l
  implements DialogInterface.OnClickListener
{
  l(Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.settings.USAGE_ACCESS_SETTINGS");
    a.startActivity(localIntent);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */