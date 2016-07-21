package com.estrongs.android.ui.pcs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.j.c;
import com.estrongs.android.ui.view.ak;

class ad
  implements DialogInterface.OnClickListener
{
  ad(z paramz, EditText paramEditText) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if (a.getText().toString().length() == 0)
      {
        ak.a(z.a(b), 2131232540, 0);
        return;
      }
      z.d(b, a.getText().toString());
      paramDialogInterface = c.a(z.a(b));
      if (paramDialogInterface != null) {}
    }
    catch (Exception paramDialogInterface) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */