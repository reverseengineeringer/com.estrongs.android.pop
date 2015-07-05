package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.widget.g;
import com.estrongs.fs.h;

class it
  implements DialogInterface.OnClickListener
{
  it(ir paramir, g paramg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = a.e().getAbsolutePath();
    ip.a(b.a, "open_folder" + str);
    paramDialogInterface.dismiss();
    b.a.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.it
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */