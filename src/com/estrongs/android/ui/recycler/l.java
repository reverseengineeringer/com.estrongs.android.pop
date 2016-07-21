package com.estrongs.android.ui.recycler;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;

public class l
  extends RecyclerView.ItemDecoration
{
  private int a;
  
  public l(Context paramContext)
  {
    a = paramContext.getResources().getDimensionPixelSize(2131165466);
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    int i = paramRecyclerView.getChildLayoutPosition(paramView);
    if (i != -1)
    {
      paramView = paramRecyclerView.getLayoutManager();
      if ((paramView instanceof GridLayoutManager))
      {
        int j = ((GridLayoutManager)paramView).getSpanCount();
        int k = paramState.getItemCount();
        if (k % j == 0)
        {
          if (k - i > j) {
            break label71;
          }
          paramRect.set(0, 0, 0, a);
        }
      }
    }
    return;
    label71:
    paramRect.set(0, 0, 0, 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */