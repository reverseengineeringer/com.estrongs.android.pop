package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.estrongs.android.ui.navigation.m;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.fs.impl.usb.g;
import java.util.List;

class ai
  implements DialogInterface.OnClickListener
{
  ai(FileExplorerActivity paramFileExplorerActivity, g paramg, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject;
    if (a != null)
    {
      localObject = c.ad();
      if (localObject != null) {
        ((m)localObject).b(b);
      }
      a.f();
      a.e();
      localObject = c.w;
      paramInt = 0;
      if (paramInt < ((List)localObject).size())
      {
        cr localcr = (cr)((List)localObject).get(paramInt);
        if ((localcr == null) || (localcr.c() == null) || (!localcr.c().startsWith(b))) {
          break label117;
        }
        c.b(localcr);
      }
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      label117:
      paramInt += 1;
      break;
      if (ap.bL(b))
      {
        localObject = new Intent("android.settings.INTERNAL_STORAGE_SETTINGS");
        ((Intent)localObject).setFlags(268435456);
        c.startActivity((Intent)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */