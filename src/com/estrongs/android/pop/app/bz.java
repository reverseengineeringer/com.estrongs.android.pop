package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.util.ay;
import com.estrongs.android.widget.g;

class bz
  implements DialogInterface.OnClickListener
{
  bz(FileChooserActivity paramFileChooserActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = ay.b(a, a.a.e());
    a.setResult(-1, paramDialogInterface);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */