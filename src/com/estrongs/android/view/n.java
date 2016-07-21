package com.estrongs.android.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.app.compress.cb;
import com.estrongs.android.pop.view.FileExplorerActivity;

class n
  implements DialogInterface.OnClickListener
{
  n(l paraml, cb paramcb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.dismiss();
    FileExplorerActivity.X().b(b.b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */