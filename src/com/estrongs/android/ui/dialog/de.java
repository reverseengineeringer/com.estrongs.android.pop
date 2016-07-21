package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.widget.f;
import com.estrongs.fs.h;

class de
  implements DialogInterface.OnClickListener
{
  de(dc paramdc, f paramf) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = a.e().getAbsolutePath();
    if (b.a.a(str))
    {
      paramDialogInterface.dismiss();
      b.a.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */