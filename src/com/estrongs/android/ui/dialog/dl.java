package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.ui.view.ag;

class dl
  implements DialogInterface.OnClickListener
{
  dl(dj paramdj) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = dj.a(a).getEditableText().toString();
    if ((str.equals("")) && (dj.b(a).getVisibility() != 8)) {
      ag.a(dj.c(a), 2131428598, 0);
    }
    do
    {
      return;
      paramDialogInterface.dismiss();
    } while (dj.d(a) == null);
    dj.d(a).a(str, dj.b(a).isChecked());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */