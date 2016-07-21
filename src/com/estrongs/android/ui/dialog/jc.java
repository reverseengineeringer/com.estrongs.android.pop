package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.widget.f;
import com.estrongs.fs.h;

class jc
  implements DialogInterface.OnClickListener
{
  jc(ja paramja, f paramf) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = a.e().getAbsolutePath();
    iy.a(b.a, "open_folder" + str);
    paramDialogInterface.dismiss();
    b.a.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */