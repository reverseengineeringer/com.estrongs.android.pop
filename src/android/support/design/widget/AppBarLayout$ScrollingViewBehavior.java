package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.j;
import android.util.AttributeSet;
import android.view.View;
import java.util.List;

public class AppBarLayout$ScrollingViewBehavior
  extends HeaderScrollingViewBehavior
{
  public AppBarLayout$ScrollingViewBehavior() {}
  
  public AppBarLayout$ScrollingViewBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.ScrollingViewBehavior_Params);
    b(paramContext.getDimensionPixelSize(j.ScrollingViewBehavior_Params_behavior_overlapTop, 0));
    paramContext.recycle();
  }
  
  private static int a(AppBarLayout paramAppBarLayout)
  {
    paramAppBarLayout = ((v)paramAppBarLayout.getLayoutParams()).b();
    if ((paramAppBarLayout instanceof AppBarLayout.Behavior)) {
      return ((AppBarLayout.Behavior)paramAppBarLayout).a();
    }
    return 0;
  }
  
  private void e(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    paramCoordinatorLayout = ((v)paramView2.getLayoutParams()).b();
    if ((paramCoordinatorLayout instanceof AppBarLayout.Behavior))
    {
      paramCoordinatorLayout = (AppBarLayout.Behavior)paramCoordinatorLayout;
      paramCoordinatorLayout.a();
      int i = paramView2.getBottom();
      int j = paramView1.getTop();
      paramView1.offsetTopAndBottom(AppBarLayout.Behavior.a(paramCoordinatorLayout) + (i - j) + a() - c(paramView2));
    }
  }
  
  float a(View paramView)
  {
    int j;
    int k;
    int i;
    if ((paramView instanceof AppBarLayout))
    {
      paramView = (AppBarLayout)paramView;
      j = paramView.getTotalScrollRange();
      k = AppBarLayout.b(paramView);
      i = a(paramView);
      if ((k == 0) || (j + i > k)) {
        break label43;
      }
    }
    label43:
    do
    {
      return 0.0F;
      j -= k;
    } while (j == 0);
    return 1.0F + i / j;
  }
  
  View a(List<View> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)paramList.get(i);
      if ((localView instanceof AppBarLayout)) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  int b(View paramView)
  {
    if ((paramView instanceof AppBarLayout)) {
      return ((AppBarLayout)paramView).getTotalScrollRange();
    }
    return super.b(paramView);
  }
  
  public boolean b(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    return paramView2 instanceof AppBarLayout;
  }
  
  public boolean c(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    e(paramCoordinatorLayout, paramView1, paramView2);
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.AppBarLayout.ScrollingViewBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */