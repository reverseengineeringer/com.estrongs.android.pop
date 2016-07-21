package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.util.ap;
import com.estrongs.android.widget.f;
import java.io.File;

class cg
  implements DialogInterface.OnClickListener
{
  cg(cf paramcf, ci paramci) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = b.a.a.d();
    a.dismiss();
    if (ap.bl(paramDialogInterface)) {}
    for (paramDialogInterface = new Intent(null, Uri.fromFile(new File(paramDialogInterface)));; paramDialogInterface = new Intent(null, Uri.parse(paramDialogInterface)))
    {
      b.a.setResult(-1, paramDialogInterface);
      b.a.finish();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */