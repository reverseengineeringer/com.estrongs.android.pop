package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.estrongs.android.widget.HeaderGridView;
import com.handmark.pulltorefresh.library.a.a;

class n
  extends HeaderGridView
  implements a
{
  public n(PullToRefreshGridView paramPullToRefreshGridView, Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(View paramView)
  {
    super.setEmptyView(paramView);
  }
  
  public void setEmptyView(View paramView)
  {
    a.a(paramView);
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */