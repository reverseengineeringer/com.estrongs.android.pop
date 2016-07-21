package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.view.ak;

class bw
  implements DialogInterface.OnClickListener
{
  bw(bu parambu) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = a.a.e.getText().toString();
    String str2 = a.a.f.getText().toString();
    if ((str1 == null) || (str1.length() == 0) || (str2 == null) || (str2.length() == 0))
    {
      ak.a(a.a, 2131231442, 0);
      return;
    }
    if (str2.length() < 8)
    {
      ak.a(a.a, 2131231294, 0);
      return;
    }
    if (str1.length() > 32)
    {
      ak.a(a.a, 2131231445, 0);
      return;
    }
    ad.a(a.a).G(str1);
    ad.a(a.a).H(str2);
    ad.a(a.a).k(true);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */