package com.estrongs.android.ui.e;

import com.estrongs.a.a;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.fs.b.w;

final class dk
  implements p
{
  dk(FileExplorerActivity paramFileExplorerActivity, ProgressDialog paramProgressDialog, w paramw, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4) {
      a.runOnUiThread(new dl(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */