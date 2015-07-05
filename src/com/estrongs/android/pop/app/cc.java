package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.g;
import java.io.File;

class cc
  implements DialogInterface.OnClickListener
{
  cc(cb paramcb, cg paramcg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = b.a.a.d();
    a.dismiss();
    if (am.ba(paramDialogInterface)) {}
    for (paramDialogInterface = new Intent(null, Uri.fromFile(new File(paramDialogInterface)));; paramDialogInterface = new Intent(null, Uri.parse(paramDialogInterface)))
    {
      b.a.setResult(-1, paramDialogInterface);
      b.a.finish();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */