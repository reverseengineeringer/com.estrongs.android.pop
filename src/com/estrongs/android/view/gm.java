package com.estrongs.android.view;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.pop.view.utils.AppRunner;

class gm
  implements DialogInterface.OnClickListener
{
  gm(gl paramgl, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject;
    if (paramInt == 0)
    {
      localObject = new Intent(b.a.ag, DownloaderActivity.class);
      ((Intent)localObject).setDataAndType(Uri.parse(a), "image/*");
      b.a.ag.startActivity((Intent)localObject);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (paramInt == 1)
      {
        ao.a(b.a.ag, a, "image/*");
      }
      else if (paramInt == 2)
      {
        localObject = a.f + "/WebImgSw_" + System.currentTimeMillis() + ".jpg";
        AppRunner.a(b.a.ag, a, (String)localObject, new gn(this, (String)localObject), false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.gm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */