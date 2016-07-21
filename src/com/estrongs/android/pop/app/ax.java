package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.bk;

class ax
  implements DialogInterface.OnClickListener
{
  ax(DownloaderActivity paramDownloaderActivity, DialogInterface.OnCancelListener paramOnCancelListener) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == 0) {
      DownloaderActivity.a(b, DownloaderActivity.a(b), b.getIntent().getType());
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (bk.a(ad.a(b).af()))
      {
        ay localay = new ay(this);
        DownloaderActivity.a(b, localay, a);
      }
      else
      {
        DownloaderActivity.a(b, DownloaderActivity.a(b), true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */