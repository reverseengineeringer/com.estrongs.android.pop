package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.bd;
import com.estrongs.fs.b.ap;
import com.estrongs.fs.d;
import com.estrongs.fs.util.j;

class n
  implements DialogInterface.OnClickListener
{
  n(l paraml, Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((bd.b(l.b(b).getText())) && (!j.c(l.b(b).getText().toString()))) {
      ag.a(a, a.getString(2131427875), 0);
    }
    String str;
    do
    {
      return;
      str = l.a(b).getText().toString().trim();
    } while (!l.a(b, str));
    paramDialogInterface.dismiss();
    paramDialogInterface = ad.a(a).ae();
    if (bd.a(paramDialogInterface))
    {
      paramDialogInterface = new o(this, str);
      DownloaderActivity.a(a, paramDialogInterface, null);
      return;
    }
    new ap(d.a(a), paramDialogInterface, str, l.b(b).getText().toString()).execute();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */