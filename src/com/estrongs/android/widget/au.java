package com.estrongs.android.widget;

import android.support.v7.widget.RecyclerView;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.view.co;
import com.estrongs.android.view.eb;
import com.estrongs.fs.h;
import com.estrongs.fs.w;

class au
  implements co
{
  au(ap paramap) {}
  
  public void a(RecyclerView paramRecyclerView, View paramView, int paramInt)
  {
    paramRecyclerView = (h)a.b().e(paramInt);
    if (paramRecyclerView.getFileType().a())
    {
      a.e.c(paramRecyclerView);
      if (a.j != null)
      {
        paramView = paramRecyclerView.getExtra("item_count");
        if (paramView == null) {
          break label120;
        }
        a.j.setText(paramRecyclerView.getName() + "(" + paramView + ")");
        a.j.setEllipsize(TextUtils.TruncateAt.valueOf("MIDDLE"));
      }
    }
    return;
    label120:
    a.j.setText(paramRecyclerView.getName());
    a.j.setEllipsize(TextUtils.TruncateAt.valueOf("END"));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */