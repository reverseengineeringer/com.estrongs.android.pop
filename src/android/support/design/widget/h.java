package android.support.design.widget;

import android.support.v4.view.cn;
import android.support.v4.widget.cz;
import android.support.v4.widget.dc;
import android.view.View;
import java.lang.ref.WeakReference;

class h
  extends dc
{
  h(BottomSheetBehavior paramBottomSheetBehavior) {}
  
  public int a(View paramView)
  {
    if (BottomSheetBehavior.g(a)) {
      return BottomSheetBehavior.h(a) - BottomSheetBehavior.f(a);
    }
    return BottomSheetBehavior.i(a) - BottomSheetBehavior.f(a);
  }
  
  public int a(View paramView, int paramInt1, int paramInt2)
  {
    int i = BottomSheetBehavior.f(a);
    if (BottomSheetBehavior.g(a)) {}
    for (paramInt2 = BottomSheetBehavior.h(a);; paramInt2 = BottomSheetBehavior.i(a)) {
      return av.a(paramInt1, i, paramInt2);
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 1) {
      BottomSheetBehavior.b(a, 1);
    }
  }
  
  public void a(View paramView, float paramFloat1, float paramFloat2)
  {
    int j = 3;
    int i;
    if (paramFloat2 < 0.0F) {
      i = BottomSheetBehavior.f(a);
    }
    while (BottomSheetBehavior.j(a).a(paramView.getLeft(), i))
    {
      BottomSheetBehavior.b(a, 2);
      cn.a(paramView, new k(a, paramView, j));
      return;
      if ((BottomSheetBehavior.g(a)) && (BottomSheetBehavior.a(a, paramView, paramFloat2)))
      {
        i = BottomSheetBehavior.h(a);
        j = 5;
      }
      else if (paramFloat2 == 0.0F)
      {
        i = paramView.getTop();
        if (Math.abs(i - BottomSheetBehavior.f(a)) < Math.abs(i - BottomSheetBehavior.i(a)))
        {
          i = BottomSheetBehavior.f(a);
        }
        else
        {
          i = BottomSheetBehavior.i(a);
          j = 4;
        }
      }
      else
      {
        i = BottomSheetBehavior.i(a);
        j = 4;
      }
    }
    BottomSheetBehavior.b(a, j);
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    BottomSheetBehavior.a(a, paramInt2);
  }
  
  public boolean a(View paramView, int paramInt)
  {
    if (BottomSheetBehavior.a(a) == 1) {}
    View localView;
    do
    {
      do
      {
        return false;
      } while (BottomSheetBehavior.b(a));
      if ((BottomSheetBehavior.a(a) != 3) || (BottomSheetBehavior.c(a) != paramInt)) {
        break;
      }
      localView = (View)BottomSheetBehavior.d(a).get();
    } while ((localView != null) && (cn.b(localView, -1)));
    if ((BottomSheetBehavior.e(a) != null) && (BottomSheetBehavior.e(a).get() == paramView)) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public int b(View paramView, int paramInt1, int paramInt2)
  {
    return paramView.getLeft();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */