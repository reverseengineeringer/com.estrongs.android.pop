package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.b.w;

final class dd
  implements DialogInterface.OnCancelListener
{
  dd(w paramw, FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    a.requestStop();
    b.runOnUiThread(new de(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */