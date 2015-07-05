package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.bd;
import com.estrongs.fs.util.j;

class p
  implements DialogInterface.OnClickListener
{
  p(l paraml, Activity paramActivity) {}
  
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
    DownloaderActivity.a(a, str, null, l.b(b).getText().toString());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */