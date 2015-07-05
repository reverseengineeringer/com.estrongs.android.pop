package com.estrongs.android.ui.view;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import com.estrongs.android.ui.a.aa;

public class NaviListView
  extends ExpandableListView
  implements AbsListView.OnScrollListener
{
  private LinearLayout a;
  private aa b;
  private int c = -1;
  private int d;
  private View e;
  private Handler f;
  private final int g = 0;
  
  public NaviListView(Context paramContext)
  {
    super(paramContext);
  }
  
  public NaviListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public NaviListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private View a(int paramInt)
  {
    return (View)e().get(paramInt);
  }
  
  private void c()
  {
    if (a == null) {
      return;
    }
    if (f == null) {
      f = new bf(this);
    }
    f.removeMessages(0);
    f.sendEmptyMessage(0);
  }
  
  private int d()
  {
    if (b == null) {
      b = ((aa)getExpandableListAdapter());
    }
    int j = getFirstVisiblePosition();
    int k = b.getGroupCount();
    int i = 0;
    while (i < k)
    {
      if (j <= getFlatListPosition(getPackedPositionForGroup(i))) {
        return i;
      }
      i += 1;
    }
    return k;
  }
  
  private SparseArray<View> e()
  {
    SparseArray localSparseArray = new SparseArray();
    int i = 0;
    if (i < getChildCount())
    {
      View localView = getChildAt(i);
      if (localView == null) {}
      for (;;)
      {
        i += 1;
        break;
        long l = getExpandableListPosition(getPositionForView(localView));
        if (getPackedPositionType(l) == 0) {
          localSparseArray.put(getPackedPositionGroup(l), localView);
        }
      }
    }
    return localSparseArray;
  }
  
  public void a()
  {
    if (a == null) {
      return;
    }
    if (b == null) {
      b = ((aa)getExpandableListAdapter());
    }
    d = Math.max(0, c);
    boolean bool = isGroupExpanded(d);
    a = ((LinearLayout)b.getGroupView(d, bool, a, null));
  }
  
  public void b()
  {
    Log.w("test", "checkStaticBoard!");
    if (a == null) {}
    label84:
    label287:
    label296:
    do
    {
      int j;
      int k;
      int i;
      int m;
      do
      {
        do
        {
          return;
          if (b == null) {
            b = ((aa)getExpandableListAdapter());
          }
          j = d();
          Log.d("test", "firstVisible : " + j);
          View localView1;
          if (j == 0)
          {
            if (c != 0)
            {
              c = 0;
              a();
            }
            View localView2 = a(j);
            localView1 = localView2;
            if (localView2 != null)
            {
              localView1 = localView2;
              if (localView2.getTop() < 0)
              {
                localView1 = localView2;
                if (j + 1 < b.getGroupCount()) {
                  localView1 = a(j + 1);
                }
              }
            }
            j = a.getMeasuredHeight();
            k = a.getMeasuredWidth();
            if (localView1 != null) {
              break label287;
            }
          }
          for (i = j;; i = localView1.getTop())
          {
            m = Math.max(0, i);
            if (i >= 0) {
              break label296;
            }
            Log.d("test", "switch 1: " + i + " , " + m);
            a.layout(0, 0, k, j);
            if (e.getVisibility() != 0) {
              break;
            }
            e.setVisibility(4);
            return;
            k = j - 1;
            localView1 = a(j);
            i = k;
            if (localView1 != null)
            {
              i = k;
              if (localView1.getTop() <= 0) {
                i = j;
              }
            }
            if (i == c) {
              break label84;
            }
            c = i;
            a();
            break label84;
          }
          if (m >= j) {
            break;
          }
          Log.d("test", "switch 2 : " + i + " , " + m);
          a.layout(0, m - j, k, m);
        } while (e.getVisibility() != 4);
        e.setVisibility(0);
        return;
      } while (m < j);
      Log.d("test", "switch 3 : " + i + " , " + m);
      a.layout(0, 0, k, j);
    } while (e.getVisibility() != 0);
    e.setVisibility(4);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    c();
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    b();
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    Log.e("test", "onScrollStateChanged!");
    b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.NaviListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */