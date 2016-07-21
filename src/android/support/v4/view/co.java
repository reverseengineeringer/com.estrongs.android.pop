package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.WeakHashMap;

class co
  implements da
{
  WeakHashMap<View, ex> a = null;
  
  private boolean a(cg paramcg, int paramInt)
  {
    boolean bool = true;
    int i = paramcg.computeHorizontalScrollOffset();
    int j = paramcg.computeHorizontalScrollRange() - paramcg.computeHorizontalScrollExtent();
    if (j == 0) {
      bool = false;
    }
    do
    {
      do
      {
        return bool;
        if (paramInt >= 0) {
          break;
        }
      } while (i > 0);
      return false;
    } while (i < j - 1);
    return false;
  }
  
  private boolean b(cg paramcg, int paramInt)
  {
    boolean bool = true;
    int i = paramcg.computeVerticalScrollOffset();
    int j = paramcg.computeVerticalScrollRange() - paramcg.computeVerticalScrollExtent();
    if (j == 0) {
      bool = false;
    }
    do
    {
      do
      {
        return bool;
        if (paramInt >= 0) {
          break;
        }
      } while (i > 0);
      return false;
    } while (i < j - 1);
    return false;
  }
  
  public float A(View paramView)
  {
    return 0.0F;
  }
  
  public boolean B(View paramView)
  {
    return false;
  }
  
  public void C(View paramView) {}
  
  public boolean D(View paramView)
  {
    return false;
  }
  
  public boolean E(View paramView)
  {
    if ((paramView instanceof br)) {
      return ((br)paramView).isNestedScrollingEnabled();
    }
    return false;
  }
  
  public ColorStateList F(View paramView)
  {
    return db.a(paramView);
  }
  
  public PorterDuff.Mode G(View paramView)
  {
    return db.b(paramView);
  }
  
  public void H(View paramView)
  {
    if ((paramView instanceof br)) {
      ((br)paramView).stopNestedScroll();
    }
  }
  
  public boolean I(View paramView)
  {
    return db.c(paramView);
  }
  
  public float J(View paramView)
  {
    return A(paramView) + z(paramView);
  }
  
  public boolean K(View paramView)
  {
    return db.f(paramView);
  }
  
  public boolean L(View paramView)
  {
    return false;
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    return paramInt1 | paramInt2;
  }
  
  public int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSize(paramInt1, paramInt2);
  }
  
  public int a(View paramView)
  {
    return 2;
  }
  
  long a()
  {
    return 10L;
  }
  
  public fr a(View paramView, fr paramfr)
  {
    return paramfr;
  }
  
  public void a(View paramView, float paramFloat) {}
  
  public void a(View paramView, int paramInt1, int paramInt2) {}
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.invalidate(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void a(View paramView, int paramInt, Paint paramPaint) {}
  
  public void a(View paramView, ColorStateList paramColorStateList)
  {
    db.a(paramView, paramColorStateList);
  }
  
  public void a(View paramView, Paint paramPaint) {}
  
  public void a(View paramView, PorterDuff.Mode paramMode)
  {
    db.a(paramView, paramMode);
  }
  
  public void a(View paramView, a parama) {}
  
  public void a(View paramView, bv parambv) {}
  
  public void a(View paramView, Runnable paramRunnable)
  {
    paramView.postDelayed(paramRunnable, a());
  }
  
  public void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    paramView.postDelayed(paramRunnable, a() + paramLong);
  }
  
  public void a(View paramView, boolean paramBoolean) {}
  
  public void a(ViewGroup paramViewGroup, boolean paramBoolean) {}
  
  public boolean a(View paramView, int paramInt)
  {
    return ((paramView instanceof cg)) && (a((cg)paramView, paramInt));
  }
  
  public fr b(View paramView, fr paramfr)
  {
    return paramfr;
  }
  
  public void b(View paramView, float paramFloat) {}
  
  public void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void b(View paramView, boolean paramBoolean) {}
  
  public boolean b(View paramView)
  {
    return false;
  }
  
  public boolean b(View paramView, int paramInt)
  {
    return ((paramView instanceof cg)) && (b((cg)paramView, paramInt));
  }
  
  public void c(View paramView, float paramFloat) {}
  
  public void c(View paramView, int paramInt) {}
  
  public void c(View paramView, boolean paramBoolean) {}
  
  public boolean c(View paramView)
  {
    return false;
  }
  
  public void d(View paramView)
  {
    paramView.invalidate();
  }
  
  public void d(View paramView, float paramFloat) {}
  
  public void d(View paramView, int paramInt) {}
  
  public int e(View paramView)
  {
    return 0;
  }
  
  public void e(View paramView, float paramFloat) {}
  
  public void e(View paramView, int paramInt)
  {
    db.b(paramView, paramInt);
  }
  
  public float f(View paramView)
  {
    return 1.0F;
  }
  
  public void f(View paramView, float paramFloat) {}
  
  public void f(View paramView, int paramInt)
  {
    db.a(paramView, paramInt);
  }
  
  public int g(View paramView)
  {
    return 0;
  }
  
  public void g(View paramView, float paramFloat) {}
  
  public int h(View paramView)
  {
    return 0;
  }
  
  public void h(View paramView, float paramFloat) {}
  
  public ViewParent i(View paramView)
  {
    return paramView.getParent();
  }
  
  public void i(View paramView, float paramFloat) {}
  
  public void j(View paramView, float paramFloat) {}
  
  public boolean j(View paramView)
  {
    boolean bool2 = false;
    paramView = paramView.getBackground();
    boolean bool1 = bool2;
    if (paramView != null)
    {
      bool1 = bool2;
      if (paramView.getOpacity() == -1) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public int k(View paramView)
  {
    return paramView.getMeasuredWidth();
  }
  
  public void k(View paramView, float paramFloat) {}
  
  public int l(View paramView)
  {
    return 0;
  }
  
  public void l(View paramView, float paramFloat) {}
  
  public int m(View paramView)
  {
    return paramView.getPaddingLeft();
  }
  
  public int n(View paramView)
  {
    return paramView.getPaddingRight();
  }
  
  public boolean o(View paramView)
  {
    return true;
  }
  
  public float p(View paramView)
  {
    return 0.0F;
  }
  
  public float q(View paramView)
  {
    return 0.0F;
  }
  
  public float r(View paramView)
  {
    return 0.0F;
  }
  
  public float s(View paramView)
  {
    return 0.0F;
  }
  
  public float t(View paramView)
  {
    return 0.0F;
  }
  
  public int u(View paramView)
  {
    return db.d(paramView);
  }
  
  public int v(View paramView)
  {
    return db.e(paramView);
  }
  
  public ex w(View paramView)
  {
    return new ex(paramView);
  }
  
  public int x(View paramView)
  {
    return 0;
  }
  
  public void y(View paramView) {}
  
  public float z(View paramView)
  {
    return 0.0F;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */