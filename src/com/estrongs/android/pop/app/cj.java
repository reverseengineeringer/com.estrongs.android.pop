package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import java.io.File;

class cj
  implements DialogInterface.OnClickListener
{
  cj(ci paramci) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == 0)
    {
      a.c.c.setData(FileContentProvider.a(a.b));
      a.c.d.setResult(-1, a.c.c);
      a.c.d.finish();
    }
    while (paramInt != 1) {
      return;
    }
    a.c.c.setData(Uri.fromFile(new File(a.b)));
    a.c.d.setResult(-1, a.c.c);
    a.c.d.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */