package com.estrongs.android.ui.recycler;

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

public class g
  extends RecyclerView.ItemDecoration
{
  private Drawable a;
  private Drawable b;
  private int c;
  private int d = 1;
  private boolean e = false;
  private Context f;
  
  public g(Context paramContext)
  {
    f = paramContext;
    b = new ColorDrawable(paramContext.getResources().getColor(2131558460));
    a = b;
    c = d;
  }
  
  public void a(int paramInt)
  {
    a = new ColorDrawable(paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void b(int paramInt)
  {
    if (paramInt >= 0) {
      c = com.estrongs.android.ui.d.g.a(f, paramInt);
    }
  }
  
  public void getItemOffsets(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    int i = paramRecyclerView.getChildAdapterPosition(paramView);
    if ((e) && (i == 0))
    {
      paramRect.set(0, c, 0, c);
      return;
    }
    paramRect.set(0, 0, 0, c);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.State paramState)
  {
    int j = paramRecyclerView.getPaddingLeft();
    int k = paramRecyclerView.getWidth() - paramRecyclerView.getPaddingRight();
    int m = paramRecyclerView.getChildCount();
    int i = 0;
    while (i < m)
    {
      paramState = paramRecyclerView.getChildAt(i);
      if ((e) && (i == 0))
      {
        a.setBounds(j, paramState.getTop() - c, k, paramState.getTop());
        a.draw(paramCanvas);
      }
      RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramState.getLayoutParams();
      int n = paramState.getBottom();
      n = bottomMargin + n;
      int i1 = c;
      a.setBounds(j, n, k, i1 + n);
      a.draw(paramCanvas);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */