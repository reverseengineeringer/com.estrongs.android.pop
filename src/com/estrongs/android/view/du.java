package com.estrongs.android.view;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.DownloaderActivity;

final class du
  implements DialogInterface.OnClickListener
{
  du(Context paramContext, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent;
    if (paramInt == 0)
    {
      localIntent = new Intent(a, DownloaderActivity.class);
      localIntent.setDataAndType(Uri.parse(b), "video/*");
      a.startActivity(localIntent);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (paramInt == 1)
      {
        localIntent = new Intent("android.intent.action.SEND");
        localIntent.setType("text/plain");
        localIntent.putExtra("android.intent.extra.TEXT", b);
        a.startActivity(localIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */