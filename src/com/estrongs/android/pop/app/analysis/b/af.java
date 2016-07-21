package com.estrongs.android.pop.app.analysis.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import com.estrongs.android.pop.app.analysis.a.i;
import com.estrongs.android.ui.d.g;

class af
  extends RecyclerView.ItemDecoration
{
  private Drawable b;
  private Drawable c;
  private int d;
  private int e = 1;
  private boolean f = false;
  private int g;
  
  public af(ad paramad, Context paramContext)
  {
    c = new ColorDrawable(paramContext.getResources().getColor(2131558421));
    b = c;
    d = g.a(paramContext, e);
    g = paramad.getResources().getDimensionPixelOffset(2131165255);
  }
  
  private boolean a(int paramInt)
  {
    if (paramInt < 0) {}
    ae localae1;
    ae localae2;
    do
    {
      return false;
      localae1 = b(paramInt);
      localae2 = b(paramInt + 1);
    } while ((localae1 == null) || (localae2 == null) || (d == d));
    return true;
  }
  
  private ae b(int paramInt)
  {
    return (ae)a.w.a(paramInt);
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    int j = paramRecyclerView.getChildAdapterPosition(paramView);
    int i = d;
    if (a(j)) {}
    for (i = g; (f) && (j == 0); i = d)
    {
      paramRect.set(0, i, 0, i);
      return;
    }
    paramRect.set(0, 0, 0, i);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    int k = paramRecyclerView.getPaddingLeft();
    int m = paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight();
    int n = paramRecyclerView.getChildCount();
    int i = d;
    i = 0;
    if (i < n)
    {
      paramState = paramRecyclerView.getChildAt(i);
      if (a(paramRecyclerView.getChildAdapterPosition(paramState))) {}
      for (int j = g;; j = d)
      {
        if ((f) && (i == 0))
        {
          b.setBounds(k, paramState.getTop() - j, m, paramState.getTop());
          b.draw(paramCanvas);
        }
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramState.getLayoutParams();
        int i1 = paramState.getBottom();
        i1 = bottomMargin + i1;
        b.setBounds(k, i1, m, j + i1);
        b.draw(paramCanvas);
        i += 1;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */