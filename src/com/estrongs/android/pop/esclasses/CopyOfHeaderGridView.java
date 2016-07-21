package com.estrongs.android.pop.esclasses;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.lang.reflect.Field;
import java.util.ArrayList;

public class CopyOfHeaderGridView
  extends GridView
{
  public static boolean a = false;
  View b;
  private AdapterView.OnItemClickListener c;
  private AdapterView.OnItemLongClickListener d;
  private int e = -1;
  private View f = null;
  private int g = -1;
  private ArrayList<b> h = new ArrayList();
  private ArrayList<b> i = new ArrayList();
  private ListAdapter j;
  private d k;
  private boolean l = false;
  
  public CopyOfHeaderGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public CopyOfHeaderGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a() {}
  
  private void b()
  {
    if (b != null)
    {
      if ((getAdapter() != null) && (getAdapter().isEmpty())) {
        b.setVisibility(0);
      }
    }
    else {
      return;
    }
    b.setVisibility(8);
  }
  
  @TargetApi(16)
  private int getColumnWidthCompatible()
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return super.getColumnWidth();
    }
    try
    {
      Field localField = GridView.class.getDeclaredField("mColumnWidth");
      localField.setAccessible(true);
      int m = localField.getInt(this);
      return m;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new RuntimeException(localNoSuchFieldException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException(localIllegalAccessException);
    }
  }
  
  private d getItemClickHandler()
  {
    if (k == null) {
      k = new d(this, null);
    }
    return k;
  }
  
  @TargetApi(11)
  private int getNumColumnsCompatible()
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return super.getNumColumns();
    }
    try
    {
      Field localField = GridView.class.getDeclaredField("mNumColumns");
      localField.setAccessible(true);
      int m = localField.getInt(this);
      return m;
    }
    catch (Exception localException)
    {
      if (e != -1) {
        return e;
      }
      throw new RuntimeException("Can not determine the mNumColumns for this API platform, please call setNumColumns to set it.");
    }
  }
  
  public int getFooterViewCount()
  {
    return i.size();
  }
  
  public int getHeaderViewCount()
  {
    return h.size();
  }
  
  @TargetApi(16)
  public int getHorizontalSpacing()
  {
    try
    {
      if (Build.VERSION.SDK_INT < 16)
      {
        Field localField = GridView.class.getDeclaredField("mHorizontalSpacing");
        localField.setAccessible(true);
        return localField.getInt(this);
      }
      int m = super.getHorizontalSpacing();
      return m;
    }
    catch (Exception localException) {}
    return 0;
  }
  
  public ListAdapter getOriginalAdapter()
  {
    return j;
  }
  
  public int getRowHeight()
  {
    if (g > 0) {
      return g;
    }
    Object localObject = getAdapter();
    int n = getNumColumnsCompatible();
    if ((localObject == null) || (((ListAdapter)localObject).getCount() <= (h.size() + i.size()) * n)) {
      return -1;
    }
    int m = getColumnWidthCompatible();
    View localView = getAdapter().getView(n * h.size(), f, this);
    AbsListView.LayoutParams localLayoutParams = (AbsListView.LayoutParams)localView.getLayoutParams();
    localObject = localLayoutParams;
    if (localLayoutParams == null)
    {
      localObject = new AbsListView.LayoutParams(-1, -2, 0);
      localView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    }
    n = getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, height);
    localView.measure(getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(m, 1073741824), 0, width), n);
    f = localView;
    g = localView.getMeasuredHeight();
    return g;
  }
  
  @TargetApi(16)
  public int getVerticalSpacing()
  {
    try
    {
      if (Build.VERSION.SDK_INT < 16)
      {
        Field localField = GridView.class.getDeclaredField("mVerticalSpacing");
        localField.setAccessible(true);
        return localField.getInt(this);
      }
      int m = super.getVerticalSpacing();
      return m;
    }
    catch (Exception localException) {}
    return 0;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    f = null;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    try
    {
      ListAdapter localListAdapter = getAdapter();
      if ((localListAdapter != null) && ((localListAdapter instanceof c)))
      {
        ((c)localListAdapter).a(getNumColumnsCompatible());
        ((c)localListAdapter).b(getRowHeight());
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    j = paramListAdapter;
    if ((h.size() > 0) || (i.size() > 0))
    {
      paramListAdapter = new c(this, h, i, paramListAdapter);
      int m = getNumColumnsCompatible();
      if (m > 1) {
        paramListAdapter.a(m);
      }
      paramListAdapter.b(getRowHeight());
      super.setAdapter(paramListAdapter);
      return;
    }
    super.setAdapter(paramListAdapter);
  }
  
  public void setClipChildren(boolean paramBoolean) {}
  
  public void setClipChildrenSupper(boolean paramBoolean)
  {
    super.setClipChildren(false);
  }
  
  public void setEmptyView(View paramView)
  {
    if ((getHeaderViewCount() == 0) && (getFooterViewCount() == 0))
    {
      super.setEmptyView(paramView);
      return;
    }
    b = paramView;
    b();
  }
  
  public void setExpanded(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  public void setNumColumns(int paramInt)
  {
    super.setNumColumns(paramInt);
    e = paramInt;
    ListAdapter localListAdapter = getAdapter();
    if ((localListAdapter != null) && ((localListAdapter instanceof c))) {
      ((c)localListAdapter).a(paramInt);
    }
  }
  
  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    c = paramOnItemClickListener;
    super.setOnItemClickListener(getItemClickHandler());
  }
  
  public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener paramOnItemLongClickListener)
  {
    d = paramOnItemLongClickListener;
    super.setOnItemLongClickListener(getItemClickHandler());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.CopyOfHeaderGridView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */