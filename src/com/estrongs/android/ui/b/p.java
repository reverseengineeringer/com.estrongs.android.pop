package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.bk;
import com.estrongs.fs.util.j;

class p
  implements DialogInterface.OnClickListener
{
  p(l paraml, Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((bk.b(l.b(b).getText())) && (!j.c(l.b(b).getText().toString()))) {
      ak.a(a, a.getString(2131231764), 0);
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