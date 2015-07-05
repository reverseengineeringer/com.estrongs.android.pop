package com.estrongs.android.pop;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class l
  implements DialogInterface.OnClickListener
{
  l(h paramh, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent("android.intent.action.SEND");
    paramDialogInterface.putExtra("android.intent.extra.EMAIL", new String[] { "contact@estrongs.com" });
    paramDialogInterface.putExtra("android.intent.extra.SUBJECT", "Bug report - Net Access");
    paramDialogInterface.putExtra("android.intent.extra.TEXT", a);
    paramDialogInterface.setType("message/rfc822");
    try
    {
      b.a.startActivity(paramDialogInterface);
      return;
    }
    catch (Exception paramDialogInterface)
    {
      paramDialogInterface.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */