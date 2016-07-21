package com.estrongs.android.ui.adapter;

import android.content.Intent;
import com.estrongs.android.pop.app.HideListActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.lc;

final class cw
  implements lc
{
  cw(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Intent localIntent = new Intent(a, HideListActivity.class);
      a.startActivityForResult(localIntent, 4124);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */