package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.fs.h;

final class im
  implements DialogInterface.OnClickListener
{
  im(Context paramContext, h paramh, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ie.a(a, b, c.getText().toString().trim(), false, false);
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.im
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */