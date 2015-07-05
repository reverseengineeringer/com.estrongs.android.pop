package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;

final class cr
  implements DialogInterface.OnClickListener
{
  cr(ad paramad, FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    a.t(true);
    b.d("recycle://");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */