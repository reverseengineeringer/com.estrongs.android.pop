package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class jn
  implements DialogInterface.OnClickListener
{
  jn(jm paramjm) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent("android.intent.action.VIEW");
    paramDialogInterface.setData(Uri.parse("http://0.esfileexplorer.duapp.com/notify/1t"));
    try
    {
      a.a.a.mContext.startActivity(paramDialogInterface);
      return;
    }
    catch (Exception paramDialogInterface) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */