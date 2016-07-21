package com.estrongs.android.ui.recycler;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.CoordinatorLayout.Behavior;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.util.AttributeSet;
import android.view.View;

public class AddressBarBottomBehavior
  extends CoordinatorLayout.Behavior<View>
{
  public AddressBarBottomBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a(View paramView)
  {
    if (paramView.getVisibility() == 0) {
      paramView.setVisibility(8);
    }
  }
  
  private void b(View paramView)
  {
    if (paramView.getVisibility() == 8) {
      paramView.setVisibility(0);
    }
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    super.a(paramCoordinatorLayout, paramView1, paramView2);
    if ((paramView2 instanceof RecyclerView))
    {
      paramCoordinatorLayout = (RecyclerView)paramView2;
      paramView2 = paramCoordinatorLayout.getLayoutManager();
      if (paramCoordinatorLayout.canScrollVertically(-1)) {
        break label38;
      }
      a(paramView1);
    }
    label38:
    while ((paramView2 == null) || (paramView2.getChildAt(0).getTop() < -10)) {
      return;
    }
    a(paramView1);
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.a(paramCoordinatorLayout, paramView1, paramView2, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    super.a(paramCoordinatorLayout, paramView1, paramView2, paramInt1, paramInt2, paramArrayOfInt);
    if ((paramView2 instanceof RecyclerView))
    {
      paramCoordinatorLayout = (RecyclerView)paramView2;
      if ((paramInt2 > 0) || (paramCoordinatorLayout.canScrollVertically(-1))) {
        break label44;
      }
      a(paramView1);
    }
    label44:
    while (paramInt2 <= 0) {
      return;
    }
    b(paramView1);
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2, View paramView3, int paramInt)
  {
    return (paramInt & 0x2) != 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.AddressBarBottomBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */