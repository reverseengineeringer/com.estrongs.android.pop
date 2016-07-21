package android.support.design.widget;

import android.support.v4.view.cn;
import android.support.v4.widget.cz;
import android.support.v4.widget.dc;
import android.view.View;
import android.view.ViewParent;

class by
  extends dc
{
  private int b;
  
  by(bx parambx) {}
  
  private boolean a(View paramView, float paramFloat)
  {
    int i;
    if (paramFloat != 0.0F) {
      if (cn.h(paramView) == 1)
      {
        i = 1;
        if (bx.c(a) != 2) {
          break label34;
        }
      }
    }
    label34:
    label56:
    label64:
    label87:
    int j;
    int k;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return true;
              i = 0;
              break;
              if (bx.c(a) != 0) {
                break label64;
              }
              if (i == 0) {
                break label56;
              }
            } while (paramFloat < 0.0F);
            return false;
          } while (paramFloat > 0.0F);
          return false;
          if (bx.c(a) != 1) {
            break label138;
          }
          if (i == 0) {
            break label87;
          }
        } while (paramFloat > 0.0F);
        return false;
      } while (paramFloat < 0.0F);
      return false;
      i = paramView.getLeft();
      j = b;
      k = Math.round(paramView.getWidth() * bx.d(a));
    } while (Math.abs(i - j) >= k);
    return false;
    label138:
    return false;
  }
  
  public int a(View paramView, int paramInt1, int paramInt2)
  {
    return paramView.getTop();
  }
  
  public void a(int paramInt)
  {
    if (bx.a(a) != null) {
      bx.a(a).a(paramInt);
    }
  }
  
  public void a(View paramView, float paramFloat1, float paramFloat2)
  {
    boolean bool = false;
    ViewParent localViewParent = paramView.getParent();
    if (localViewParent != null) {
      localViewParent.requestDisallowInterceptTouchEvent(false);
    }
    int i = paramView.getWidth();
    if (a(paramView, paramFloat1)) {
      if (paramView.getLeft() < b)
      {
        i = b - i;
        bool = true;
        label60:
        if (!bx.b(a).a(i, paramView.getTop())) {
          break label119;
        }
        cn.a(paramView, new ca(a, paramView, bool));
      }
    }
    label119:
    while ((!bool) || (bx.a(a) == null))
    {
      return;
      i = b + i;
      break;
      i = b;
      break label60;
    }
    bx.a(a).a(paramView);
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = b + paramView.getWidth() * bx.e(a);
    float f2 = b + paramView.getWidth() * bx.f(a);
    if (paramInt1 <= f1)
    {
      cn.c(paramView, 1.0F);
      return;
    }
    if (paramInt1 >= f2)
    {
      cn.c(paramView, 0.0F);
      return;
    }
    cn.c(paramView, bx.b(0.0F, 1.0F - bx.a(f1, f2, paramInt1), 1.0F));
  }
  
  public boolean a(View paramView, int paramInt)
  {
    return a.a(paramView);
  }
  
  public int b(View paramView)
  {
    return paramView.getWidth();
  }
  
  public int b(View paramView, int paramInt1, int paramInt2)
  {
    int i;
    if (cn.h(paramView) == 1)
    {
      paramInt2 = 1;
      if (bx.c(a) != 0) {
        break label72;
      }
      if (paramInt2 == 0) {
        break label53;
      }
      i = b - paramView.getWidth();
      paramInt2 = b;
    }
    for (;;)
    {
      return bx.a(i, paramInt1, paramInt2);
      paramInt2 = 0;
      break;
      label53:
      i = b;
      paramInt2 = b + paramView.getWidth();
      continue;
      label72:
      if (bx.c(a) == 1)
      {
        if (paramInt2 != 0)
        {
          i = b;
          paramInt2 = b + paramView.getWidth();
        }
        else
        {
          i = b - paramView.getWidth();
          paramInt2 = b;
        }
      }
      else
      {
        i = b - paramView.getWidth();
        paramInt2 = b + paramView.getWidth();
      }
    }
  }
  
  public void b(View paramView, int paramInt)
  {
    b = paramView.getLeft();
    paramView = paramView.getParent();
    if (paramView != null) {
      paramView.requestDisallowInterceptTouchEvent(true);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */