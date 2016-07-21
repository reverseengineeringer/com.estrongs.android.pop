package com.estrongs.android.ui.pcs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.widget.EditText;
import com.estrongs.android.j.c;
import com.estrongs.android.ui.view.ak;

class aa
  implements DialogInterface.OnClickListener
{
  aa(z paramz, EditText paramEditText1, EditText paramEditText2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      paramDialogInterface = a.getText().toString();
      String str = b.getText().toString();
      if ((paramDialogInterface.length() == 0) || (str.length() == 0))
      {
        ak.a(z.a(c), 2131231932, 0);
        return;
      }
      if (!z.a(c, paramDialogInterface))
      {
        ak.a(z.a(c), 2131231997, 0);
        return;
      }
      if ((str.length() < 6) || (TextUtils.isDigitsOnly(str)))
      {
        ak.a(z.a(c), 2131231942, 0);
        return;
      }
      z.b(c, paramDialogInterface);
      z.c(c, str);
      z.b(c);
      if (c.a(z.a(c)) != null)
      {
        boolean bool = z.c(c);
        if (bool) {}
      }
      return;
    }
    catch (Exception paramDialogInterface) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */