package com.estrongs.android.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.util.ArrayList;

public class HeaderFooterGridView
  extends GridView
{
  private ArrayList<ah> a = new ArrayList();
  private ArrayList<ah> b = new ArrayList();
  private int c;
  private int d = 1;
  
  public HeaderFooterGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public HeaderFooterGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    super.setClipChildren(false);
  }
  
  public int getFooterViewCount()
  {
    return b.size();
  }
  
  public int getHeaderViewCount()
  {
    return a.size();
  }
  
  @SuppressLint({"NewApi"})
  public int getNumColumns()
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return super.getNumColumns();
    }
    return d;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (c != -1) {
      d = c;
    }
    if (d <= 0) {
      d = 1;
    }
    ListAdapter localListAdapter = getAdapter();
    if ((localListAdapter != null) && ((localListAdapter instanceof ai))) {
      ((ai)localListAdapter).a(getNumColumns());
    }
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if ((a.size() > 0) || (b.size() > 0))
    {
      paramListAdapter = new ai(a, b, paramListAdapter);
      int i = getNumColumns();
      if (i > 1) {
        paramListAdapter.a(i);
      }
      super.setAdapter(paramListAdapter);
      return;
    }
    super.setAdapter(paramListAdapter);
  }
  
  public void setClipChildren(boolean paramBoolean) {}
  
  public void setNumColumns(int paramInt)
  {
    super.setNumColumns(paramInt);
    c = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.HeaderFooterGridView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */