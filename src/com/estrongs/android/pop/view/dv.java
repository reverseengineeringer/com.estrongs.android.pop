package com.estrongs.android.pop.view;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.pop.app.ImageCommentActivity;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.dialog.fq;
import com.estrongs.android.util.am;
import com.estrongs.android.view.aw;
import com.estrongs.android.view.cd;
import com.estrongs.fs.h;
import com.estrongs.fs.m;

class dv
  implements AdapterView.OnItemClickListener
{
  dv(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = a.y();
    if (paramAdapterView != null) {}
    for (paramAdapterView = (h)paramAdapterView.e(paramInt);; paramAdapterView = null)
    {
      if (paramAdapterView != null)
      {
        if (!(paramAdapterView instanceof CreateSiteFileObject)) {
          break label47;
        }
        new fq(a).show();
      }
      label47:
      do
      {
        return;
        if (!paramAdapterView.getFileType().a()) {
          break;
        }
        paramView = a.y();
      } while ((paramView == null) || (!(paramView instanceof cd)));
      ((cd)paramView).a(paramAdapterView);
      return;
      if ((am.aG(paramAdapterView.getPath())) && (!am.as(paramAdapterView.getPath())))
      {
        paramView = new Intent(a, ImageCommentActivity.class);
        a.a(paramView, paramAdapterView);
        a.startActivity(paramView);
        return;
      }
      AppRunner.a(a, paramAdapterView.getPath(), paramAdapterView.getAbsolutePath(), false);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */