package com.estrongs.android.view;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.utils.AppRunner;

class eh
  implements DialogInterface.OnClickListener
{
  eh(eg parameg, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject;
    if (paramInt == 0)
    {
      localObject = new Intent(b.a.ad, DownloaderActivity.class);
      ((Intent)localObject).setDataAndType(Uri.parse(a), "image/*");
      b.a.ad.startActivity((Intent)localObject);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (paramInt == 1)
      {
        aj.a(b.a.ad, a, "image/*");
      }
      else if (paramInt == 2)
      {
        localObject = a.d + "/WebImgSw_" + System.currentTimeMillis() + ".jpg";
        AppRunner.a(b.a.ad, a, (String)localObject, new ei(this, (String)localObject), false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */