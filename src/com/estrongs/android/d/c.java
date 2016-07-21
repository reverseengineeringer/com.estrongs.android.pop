package com.estrongs.android.d;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;

class c
  implements DialogInterface.OnClickListener
{
  c(a parama) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((bk.a(a.b(a).getText().toString())) && (!a.a(a).isChecked()))
    {
      ak.a(a.d, a.d.getText(2131232533), 1);
      return;
    }
    String str1 = a.b(a).getText().toString().trim();
    paramDialogInterface = a.c(a).getText().toString();
    if (str1 != null) {
      str1 = ap.bz(str1);
    }
    for (;;)
    {
      Object localObject1 = paramDialogInterface;
      if (paramDialogInterface != null) {
        localObject1 = ap.bz(paramDialogInterface);
      }
      String str5 = a.c;
      String str2 = ap.F(str5);
      if ((str1 != null) && (str1.length() != 0)) {}
      for (paramDialogInterface = ap.a(str2, str1, (String)localObject1);; paramDialogInterface = str2)
      {
        String str3;
        Object localObject2;
        if ((a.d(a).isChecked()) || (ap.J(paramDialogInterface)) || (ap.L(paramDialogInterface)) || (ap.r(paramDialogInterface)) || (ap.K(paramDialogInterface)) || (ap.o(paramDialogInterface)) || (ap.Q(paramDialogInterface)))
        {
          if (!ap.Q(paramDialogInterface)) {
            break label359;
          }
          str3 = com.estrongs.fs.impl.adb.c.j(str5);
          localObject2 = com.estrongs.fs.impl.adb.c.j(paramDialogInterface);
          str2 = com.estrongs.fs.impl.adb.c.j(str2);
        }
        for (;;)
        {
          ad localad = ad.a(a.d);
          String str6 = localad.h(str3);
          String str4 = str6;
          if (str6 == null) {
            str4 = ap.a((String)localObject2);
          }
          localad.c(str3);
          if (ap.Q(paramDialogInterface)) {
            localad.a((String)localObject2, str4);
          }
          for (;;)
          {
            if (a.f != null) {
              a.f.a(str1, (String)localObject1, str5);
            }
            a.dismiss();
            return;
            if (a.d(a).isChecked()) {
              localad.a((String)localObject2, str4);
            } else {
              localad.a(str2, str4);
            }
          }
          label359:
          localObject2 = paramDialogInterface;
          str3 = str5;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */