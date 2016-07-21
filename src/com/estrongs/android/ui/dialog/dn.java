package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.ui.view.ak;

class dn
  implements DialogInterface.OnClickListener
{
  dn(dl paramdl) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = dl.a(a).getEditableText().toString();
    if ((str.equals("")) && (dl.b(a).getVisibility() != 8)) {
      ak.a(dl.c(a), 2131231919, 0);
    }
    do
    {
      return;
      paramDialogInterface.dismiss();
    } while (dl.d(a) == null);
    dl.d(a).a(str, dl.b(a).isChecked());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */