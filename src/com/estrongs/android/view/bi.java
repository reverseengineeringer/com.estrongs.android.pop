package com.estrongs.android.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.util.be;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.n.a;
import com.estrongs.fs.m;

class bi
  implements AdapterView.OnItemClickListener
{
  bi(aw paramaw) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView = (h)a.e(paramInt);
    if ((paramView instanceof a)) {}
    for (paramAdapterView = ((a)paramView).a();; paramAdapterView = paramView)
    {
      if ((paramAdapterView != null) && (paramAdapterView.getFileType().a()))
      {
        aw.a(a, true);
        a.a(paramAdapterView);
        be.c().a(paramAdapterView.getAbsolutePath(), true);
      }
      while ((paramView == null) || (a.x == null)) {
        return;
      }
      a.x.a(paramView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */