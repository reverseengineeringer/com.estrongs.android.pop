package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.view.cn;
import android.view.View;
import java.util.List;

public class ad
  extends CoordinatorLayout.Behavior<FloatingActionButton>
{
  private static final boolean a;
  private cs b;
  private float c;
  private Rect d;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private float a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton)
  {
    float f = 0.0F;
    List localList = paramCoordinatorLayout.d(paramFloatingActionButton);
    int j = localList.size();
    int i = 0;
    if (i < j)
    {
      View localView = (View)localList.get(i);
      if ((!(localView instanceof Snackbar.SnackbarLayout)) || (!paramCoordinatorLayout.a(paramFloatingActionButton, localView))) {
        break label88;
      }
      f = Math.min(f, cn.p(localView) - localView.getHeight());
    }
    label88:
    for (;;)
    {
      i += 1;
      break;
      return f;
    }
  }
  
  private boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, FloatingActionButton paramFloatingActionButton)
  {
    if (((v)paramFloatingActionButton.getLayoutParams()).a() != paramAppBarLayout.getId()) {
      return false;
    }
    if (paramFloatingActionButton.getUserSetVisibility() != 0) {
      return false;
    }
    if (d == null) {
      d = new Rect();
    }
    Rect localRect = d;
    dh.b(paramCoordinatorLayout, paramAppBarLayout, localRect);
    if (bottom <= paramAppBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
      FloatingActionButton.a(paramFloatingActionButton, null, false);
    }
    for (;;)
    {
      return true;
      FloatingActionButton.b(paramFloatingActionButton, null, false);
    }
  }
  
  private void b(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton)
  {
    int j = 0;
    Rect localRect = FloatingActionButton.a(paramFloatingActionButton);
    v localv;
    int i;
    if ((localRect != null) && (localRect.centerX() > 0) && (localRect.centerY() > 0))
    {
      localv = (v)paramFloatingActionButton.getLayoutParams();
      if (paramFloatingActionButton.getRight() < paramCoordinatorLayout.getWidth() - rightMargin) {
        break label98;
      }
      i = right;
    }
    for (;;)
    {
      if (paramFloatingActionButton.getBottom() >= paramCoordinatorLayout.getBottom() - bottomMargin) {
        j = bottom;
      }
      for (;;)
      {
        paramFloatingActionButton.offsetTopAndBottom(j);
        paramFloatingActionButton.offsetLeftAndRight(i);
        return;
        label98:
        if (paramFloatingActionButton.getLeft() > leftMargin) {
          break label143;
        }
        i = -left;
        break;
        if (paramFloatingActionButton.getTop() <= topMargin) {
          j = -top;
        }
      }
      label143:
      i = 0;
    }
  }
  
  private void c(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
  {
    float f1 = a(paramCoordinatorLayout, paramFloatingActionButton);
    if (c == f1) {
      return;
    }
    float f2 = cn.p(paramFloatingActionButton);
    if ((b != null) && (b.b())) {
      b.e();
    }
    if ((paramFloatingActionButton.isShown()) && (Math.abs(f2 - f1) > paramFloatingActionButton.getHeight() * 0.667F))
    {
      if (b == null)
      {
        b = do.a();
        b.a(a.b);
        b.a(new ae(this, paramFloatingActionButton));
      }
      b.a(f2, f1);
      b.a();
    }
    for (;;)
    {
      c = f1;
      return;
      cn.b(paramFloatingActionButton, f1);
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, int paramInt)
  {
    List localList = paramCoordinatorLayout.d(paramFloatingActionButton);
    int j = localList.size();
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        View localView = (View)localList.get(i);
        if ((!(localView instanceof AppBarLayout)) || (!a(paramCoordinatorLayout, (AppBarLayout)localView, paramFloatingActionButton))) {}
      }
      else
      {
        paramCoordinatorLayout.a(paramFloatingActionButton, paramInt);
        b(paramCoordinatorLayout, paramFloatingActionButton);
        return true;
      }
      i += 1;
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
  {
    return (a) && ((paramView instanceof Snackbar.SnackbarLayout));
  }
  
  public boolean b(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
  {
    if ((paramView instanceof Snackbar.SnackbarLayout)) {
      c(paramCoordinatorLayout, paramFloatingActionButton, paramView);
    }
    for (;;)
    {
      return false;
      if ((paramView instanceof AppBarLayout)) {
        a(paramCoordinatorLayout, (AppBarLayout)paramView, paramFloatingActionButton);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */