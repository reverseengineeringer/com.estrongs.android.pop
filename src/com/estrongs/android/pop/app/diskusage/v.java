package com.estrongs.android.pop.app.diskusage;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import com.estrongs.android.ui.d.g;

class v
  extends RecyclerView.ItemDecoration
{
  boolean a;
  boolean b;
  
  v(h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramBoolean1;
    b = paramBoolean2;
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    int i = paramRecyclerView.getChildLayoutPosition(paramView);
    if (i == 0) {
      if (a) {
        paramRect.set(0, g.a(h.N(c), 16.0F), 0, 0);
      }
    }
    do
    {
      return;
      if (i != paramState.getItemCount() - 1) {
        break;
      }
    } while (!b);
    paramRect.set(0, 0, 0, g.a(h.O(c), 16.0F));
    return;
    paramRect.set(0, 0, 0, 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */