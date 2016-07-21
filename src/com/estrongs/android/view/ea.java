package com.estrongs.android.view;

import android.content.Context;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

public class ea
  extends GridLayoutManager
{
  private int[] a = new int[2];
  
  public ea(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  private void a(RecyclerView.Recycler paramRecycler, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt)
  {
    if (paramInt1 < getItemCount()) {}
    try
    {
      View localView = paramRecycler.getViewForPosition(0);
      if (localView != null)
      {
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)localView.getLayoutParams();
        localView.measure(ViewGroup.getChildMeasureSpec(paramInt2, getPaddingLeft() + getPaddingRight(), width), ViewGroup.getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom(), height));
        paramArrayOfInt[0] = (localView.getMeasuredWidth() + leftMargin + rightMargin);
        paramInt1 = localView.getMeasuredHeight();
        paramInt2 = bottomMargin;
        paramArrayOfInt[1] = (topMargin + (paramInt1 + paramInt2));
        paramRecycler.recycleView(localView);
      }
      return;
    }
    catch (Exception paramRecycler)
    {
      paramRecycler.printStackTrace();
    }
  }
  
  public void onMeasure(RecyclerView.Recycler paramRecycler, RecyclerView.State paramState, int paramInt1, int paramInt2)
  {
    int n = View.MeasureSpec.getMode(paramInt1);
    int m = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2);
    paramInt2 = 0;
    paramInt1 = 0;
    int i1 = getItemCount();
    int i2 = getSpanCount();
    int i = 0;
    if (i < i1)
    {
      a(paramRecycler, i, View.MeasureSpec.makeMeasureSpec(i, 0), View.MeasureSpec.makeMeasureSpec(i, 0), a);
      if (getOrientation() == 0)
      {
        if (i % i2 != 0) {
          break label226;
        }
        paramInt2 += a[0];
      }
    }
    label226:
    for (;;)
    {
      if (i == 0) {
        paramInt1 = a[1];
      }
      for (;;)
      {
        i += 1;
        break;
        if (i % i2 == 0) {
          paramInt1 = a[1] + paramInt1;
        }
        for (;;)
        {
          if (i == 0)
          {
            paramInt2 = a[0];
            break;
            switch (n)
            {
            default: 
              switch (m)
              {
              }
              break;
            }
            for (;;)
            {
              setMeasuredDimension(paramInt2, paramInt1);
              return;
              paramInt2 = k;
              break;
              paramInt1 = j;
            }
          }
          break;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */