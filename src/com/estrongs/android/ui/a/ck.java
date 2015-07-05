package com.estrongs.android.ui.a;

import android.content.Intent;
import com.estrongs.android.pop.app.HideListActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.kr;

final class ck
  implements kr
{
  ck(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Intent localIntent = new Intent(a, HideListActivity.class);
      a.startActivityForResult(localIntent, 268439580);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */