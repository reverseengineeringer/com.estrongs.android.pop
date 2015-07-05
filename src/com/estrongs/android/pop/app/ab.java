package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import java.io.File;

final class ab
  implements DialogInterface.OnClickListener
{
  ab(Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    paramDialogInterface = aa.b;
    if (new File(paramDialogInterface).exists())
    {
      paramDialogInterface = b.a(paramDialogInterface);
      a.startActivity(paramDialogInterface);
      return;
    }
    if (FexApplication.a().m()) {
      try
      {
        paramDialogInterface = new Intent("android.intent.action.VIEW");
        paramDialogInterface.setData(Uri.parse("market://search?q=pname:com.estrongs.chromecast"));
        a.startActivity(paramDialogInterface);
        return;
      }
      catch (ActivityNotFoundException paramDialogInterface)
      {
        return;
      }
    }
    paramDialogInterface = new ac(this);
    DownloaderActivity.a(a, a.h, "", paramDialogInterface, false, "*/*", false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */