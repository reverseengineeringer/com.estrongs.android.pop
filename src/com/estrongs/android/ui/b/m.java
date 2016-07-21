package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.a.a;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.d;
import com.estrongs.fs.util.j;

class m
  implements DialogInterface.OnClickListener
{
  m(l paraml, Activity paramActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = l.a(b).getText().toString().trim();
    if ((bk.b(l.b(b).getText())) && (!j.c(l.b(b).getText().toString()))) {
      ak.a(a, a.getString(2131231764), 0);
    }
    while (!l.a(b, str1)) {
      return;
    }
    paramDialogInterface.dismiss();
    Object localObject = com.estrongs.android.pop.ad.a(a).A();
    paramDialogInterface = a.getString(2131230847);
    localObject = new com.estrongs.fs.b.ad(d.a(a), str1, (String)localObject);
    String str2 = l.b(b).getText().toString();
    if (bk.b(str2)) {
      ((a)localObject).recordSummary("title", str2);
    }
    ((a)localObject).setDescription(paramDialogInterface.concat(" ").concat(ap.cc(str1)));
    ((a)localObject).execute();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */