package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.compress.be;
import com.estrongs.android.pop.view.FileExplorerActivity;

class l
  implements DialogInterface.OnClickListener
{
  l(j paramj, be parambe) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.dismiss();
    FileExplorerActivity.J().b(b.b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */