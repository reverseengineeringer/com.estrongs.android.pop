package com.estrongs.android.ui.view;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;

public class FlingChangeRecyclerView
  extends RecyclerView
{
  private double a = 1.0D;
  
  public FlingChangeRecyclerView(Context paramContext)
  {
    super(paramContext);
  }
  
  public FlingChangeRecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public FlingChangeRecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean fling(int paramInt1, int paramInt2)
  {
    paramInt2 = (int)(paramInt2 * a);
    return super.fling((int)(paramInt1 * a), paramInt2);
  }
  
  public void setFlingScale(double paramDouble)
  {
    a = paramDouble;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.FlingChangeRecyclerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */