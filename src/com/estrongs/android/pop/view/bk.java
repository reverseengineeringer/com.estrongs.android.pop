package com.estrongs.android.pop.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.estrongs.android.ui.navigation.n;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.fs.impl.usb.g;
import java.util.List;

class bk
  implements DialogInterface.OnClickListener
{
  bk(FileExplorerActivity paramFileExplorerActivity, g paramg, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject;
    if (a != null)
    {
      localObject = c.O();
      if (localObject != null) {
        ((n)localObject).b(b);
      }
      a.f();
      a.e();
      localObject = c.x;
      paramInt = 0;
      if (paramInt < ((List)localObject).size())
      {
        aw localaw = (aw)((List)localObject).get(paramInt);
        if ((localaw == null) || (localaw.c() == null) || (!localaw.c().startsWith(b))) {
          break label117;
        }
        c.b(localaw);
      }
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      label117:
      paramInt += 1;
      break;
      if (am.bu(b))
      {
        localObject = new Intent("android.settings.INTERNAL_STORAGE_SETTINGS");
        ((Intent)localObject).setFlags(268435456);
        c.startActivity((Intent)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */