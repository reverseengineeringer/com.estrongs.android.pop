package com.estrongs.io.archive.sevenzip;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.d;
import java.io.File;

class j
  implements DialogInterface.OnClickListener
{
  j(h paramh, String[] paramArrayOfString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (b.a[0] != 0)
    {
      b.d.delete();
      b.e.delete();
    }
    paramDialogInterface.dismiss();
    paramDialogInterface = new ad(d.a(FexApplication.a()), b.f, a.s, false);
    f = false;
    if (!new File(a.s).exists()) {
      new File(a.s).mkdirs();
    }
    b.b.getString(2131231393, new Object[] { b.c });
    paramDialogInterface.setDescription(a[0]);
    b.b.runOnUiThread(new k(this, paramDialogInterface));
    paramDialogInterface.addTaskStatusChangeListener(new m(this));
    paramDialogInterface.execute();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */