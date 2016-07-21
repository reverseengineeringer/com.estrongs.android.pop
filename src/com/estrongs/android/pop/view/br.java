package com.estrongs.android.pop.view;

import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.estrongs.android.pop.app.ImageCommentActivity;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.scanner.l;
import com.estrongs.android.ui.dialog.ft;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.co;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.eb;
import com.estrongs.fs.h;
import com.estrongs.fs.w;

class br
  implements co
{
  br(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(RecyclerView paramRecyclerView, View paramView, int paramInt)
  {
    paramRecyclerView = a.O();
    if (paramRecyclerView != null) {}
    for (paramRecyclerView = (h)paramRecyclerView.e(paramInt);; paramRecyclerView = null)
    {
      if (paramRecyclerView != null)
      {
        if (!(paramRecyclerView instanceof CreateSiteFileObject)) {
          break label47;
        }
        new ft(a).show();
      }
      label47:
      do
      {
        return;
        if (!paramRecyclerView.getFileType().a()) {
          break;
        }
        paramView = a.O();
      } while ((paramView == null) || (!(paramView instanceof eb)));
      ((eb)paramView).c(paramRecyclerView);
      return;
      if ((ap.aQ(paramRecyclerView.getPath())) && (!ap.aC(paramRecyclerView.getPath())))
      {
        paramView = new Intent(a, ImageCommentActivity.class);
        a.a(paramView, paramRecyclerView);
        a.startActivity(paramView);
      }
      for (;;)
      {
        l.a().a(paramRecyclerView.getAbsolutePath());
        return;
        AppRunner.a(a, paramRecyclerView.getPath(), paramRecyclerView.getAbsolutePath(), false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */