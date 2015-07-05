package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import com.estrongs.android.widget.HeaderGridView;

public class PullToRefreshGridView
  extends PullToRefreshAdapterViewBase<HeaderGridView>
{
  public PullToRefreshGridView(Context paramContext)
  {
    super(paramContext);
  }
  
  public PullToRefreshGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public PullToRefreshGridView(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext, paramMode);
  }
  
  public PullToRefreshGridView(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.AnimationStyle paramAnimationStyle)
  {
    super(paramContext, paramMode, paramAnimationStyle);
  }
  
  protected final HeaderGridView b(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (Build.VERSION.SDK_INT >= 9) {}
    for (paramContext = new o(this, paramContext, paramAttributeSet);; paramContext = new n(this, paramContext, paramAttributeSet))
    {
      paramContext.setId(2131361792);
      return paramContext;
    }
  }
  
  public final PullToRefreshBase.Orientation o()
  {
    return PullToRefreshBase.Orientation.VERTICAL;
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshGridView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */