package com.estrongs.android.ui.recycler;

import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.SpanSizeLookup;
import java.lang.ref.WeakReference;

public class m
  extends GridLayoutManager.SpanSizeLookup
{
  private WeakReference<GridLayoutManager> a;
  private boolean b = false;
  
  public m(GridLayoutManager paramGridLayoutManager)
  {
    a = new WeakReference(paramGridLayoutManager);
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public boolean a()
  {
    return b;
  }
  
  public int getSpanSize(int paramInt)
  {
    if (!b) {
      return 1;
    }
    if (paramInt == 0) {
      try
      {
        paramInt = ((GridLayoutManager)a.get()).getSpanCount();
        return paramInt;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */