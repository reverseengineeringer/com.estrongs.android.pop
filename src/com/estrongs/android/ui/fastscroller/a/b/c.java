package com.estrongs.android.ui.fastscroller.a.b;

import android.support.v7.widget.RecyclerView;
import com.estrongs.android.ui.fastscroller.a.a;

public class c
  extends d
{
  public c(a parama)
  {
    super(parama);
  }
  
  public float a(RecyclerView paramRecyclerView)
  {
    int i = paramRecyclerView.computeVerticalScrollExtent();
    int j = paramRecyclerView.computeVerticalScrollOffset();
    int k = paramRecyclerView.computeVerticalScrollRange();
    return j / (k - i);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.fastscroller.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */