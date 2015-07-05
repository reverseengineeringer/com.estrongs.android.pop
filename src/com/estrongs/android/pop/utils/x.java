package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.ui.view.ag;
import java.io.File;

final class x
  implements DialogInterface.OnClickListener
{
  x(v paramv, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    paramDialogInterface = a.d + "/" + a.e.hashCode() + ".apk";
    if (new File(paramDialogInterface).exists())
    {
      paramDialogInterface = b.a(paramDialogInterface);
      b.startActivity(paramDialogInterface);
      return;
    }
    if (a.c() != null)
    {
      paramDialogInterface = new Intent("android.intent.action.VIEW");
      paramDialogInterface.setData(Uri.parse(a.c()));
      try
      {
        b.startActivity(paramDialogInterface);
        return;
      }
      catch (ActivityNotFoundException paramDialogInterface)
      {
        ag.a(b, b.getText(2131427842), 1);
        return;
      }
    }
    paramDialogInterface = new y(this);
    DownloaderActivity.a((Activity)b, a.d, a.e, paramDialogInterface, false, "*/*", false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */