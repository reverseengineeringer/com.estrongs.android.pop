package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.widget.EditText;

final class ih
  implements DialogInterface.OnClickListener
{
  ih(Context paramContext, String paramString, EditText paramEditText, DialogInterface.OnDismissListener paramOnDismissListener) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ib.a(a, b, c.getText().toString().trim(), d);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */