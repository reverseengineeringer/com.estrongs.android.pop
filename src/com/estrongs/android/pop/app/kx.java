package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.am;

class kx
  implements DialogInterface.OnClickListener
{
  kx(ShowDialogActivity paramShowDialogActivity, String paramString, boolean paramBoolean) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject2 = a;
    Object localObject1 = localObject2;
    if (b)
    {
      localObject1 = localObject2;
      if (am.bb(a)) {
        localObject1 = am.bk(a);
      }
    }
    localObject2 = new Intent(c, FileExplorerActivity.class);
    ((Intent)localObject2).addFlags(603979776);
    if (((String)localObject1).endsWith("/")) {}
    for (;;)
    {
      ((Intent)localObject2).setData(Uri.parse(Uri.encode((String)localObject1, "/")));
      c.startActivity((Intent)localObject2);
      paramDialogInterface.dismiss();
      c.finish();
      return;
      localObject1 = (String)localObject1 + "/";
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.kx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */