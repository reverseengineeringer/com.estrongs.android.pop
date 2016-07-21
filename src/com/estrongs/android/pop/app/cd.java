package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.util.bc;
import com.estrongs.android.widget.f;

class cd
  implements DialogInterface.OnClickListener
{
  cd(FileChooserActivity paramFileChooserActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = bc.b(a, a.a.e());
    a.setResult(-1, paramDialogInterface);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */