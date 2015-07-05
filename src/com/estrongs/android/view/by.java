package com.estrongs.android.view;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.estrongs.android.d.k;
import java.util.HashMap;

class by
  implements AbsListView.OnScrollListener
{
  by(aw paramaw) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    a.Q = paramInt1;
    a.R = (a.Q + paramInt2);
    a.S = paramInt2;
    a.F.put(a.v, paramAbsListView.onSaveInstanceState());
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      a.Z();
      return;
      if (a.I != null) {
        a.I.b();
      }
      a.F.put(a.v, paramAbsListView.onSaveInstanceState());
      continue;
      if (a.I != null)
      {
        a.I.a();
        continue;
        if (a.I != null) {
          a.I.a();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */