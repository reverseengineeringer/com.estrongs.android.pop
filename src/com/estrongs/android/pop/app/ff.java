package com.estrongs.android.pop.app;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class ff
  implements AbsListView.OnScrollListener
{
  ff(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    a.c = paramInt1;
    a.d = (paramInt1 + paramInt2);
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */