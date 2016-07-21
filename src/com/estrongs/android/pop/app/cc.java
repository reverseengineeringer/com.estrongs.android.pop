package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class cc
  implements DialogInterface.OnClickListener
{
  cc(FileChooserActivity paramFileChooserActivity, Intent paramIntent, String paramString, Uri paramUri) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (paramInt == 0)
    {
      a.setData(FileChooserActivity.a(d, b));
      d.setResult(-1, a);
      d.finish();
    }
    while (paramInt != 1) {
      return;
    }
    a.setData(c);
    d.setResult(-1, a);
    d.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */