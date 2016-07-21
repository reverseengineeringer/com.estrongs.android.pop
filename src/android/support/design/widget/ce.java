package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.view.cn;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

class ce
  extends LinearLayout
{
  private int b;
  private final Paint c;
  private int d = -1;
  private float e;
  private int f = -1;
  private int g = -1;
  private cs h;
  
  ce(TabLayout paramTabLayout, Context paramContext)
  {
    super(paramContext);
    setWillNotDraw(false);
    c = new Paint();
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != f) || (paramInt2 != g))
    {
      f = paramInt1;
      g = paramInt2;
      cn.d(this);
    }
  }
  
  private void c()
  {
    View localView = getChildAt(d);
    int i;
    int j;
    if ((localView != null) && (localView.getWidth() > 0))
    {
      int m = localView.getLeft();
      int k = localView.getRight();
      i = k;
      j = m;
      if (e > 0.0F)
      {
        i = k;
        j = m;
        if (d < getChildCount() - 1)
        {
          localView = getChildAt(d + 1);
          float f1 = e;
          float f2 = localView.getLeft();
          float f3 = e;
          j = (int)(m * (1.0F - f3) + f1 * f2);
          f1 = e;
          f2 = localView.getRight();
          f3 = e;
          i = (int)(k * (1.0F - f3) + f2 * f1);
        }
      }
    }
    for (;;)
    {
      b(j, i);
      return;
      i = -1;
      j = -1;
    }
  }
  
  void a(int paramInt)
  {
    if (c.getColor() != paramInt)
    {
      c.setColor(paramInt);
      cn.d(this);
    }
  }
  
  void a(int paramInt, float paramFloat)
  {
    if ((h != null) && (h.b())) {
      h.e();
    }
    d = paramInt;
    e = paramFloat;
    c();
  }
  
  void a(int paramInt1, int paramInt2)
  {
    if ((h != null) && (h.b())) {
      h.e();
    }
    int i;
    Object localObject;
    if (cn.h(this) == 1)
    {
      i = 1;
      localObject = getChildAt(paramInt1);
      if (localObject != null) {
        break label56;
      }
      c();
    }
    for (;;)
    {
      return;
      i = 0;
      break;
      label56:
      int k = ((View)localObject).getLeft();
      int m = ((View)localObject).getRight();
      int j;
      if (Math.abs(paramInt1 - d) <= 1)
      {
        i = f;
        j = g;
      }
      while ((i != k) || (j != m))
      {
        localObject = do.a();
        h = ((cs)localObject);
        ((cs)localObject).a(a.b);
        ((cs)localObject).a(paramInt2);
        ((cs)localObject).a(0.0F, 1.0F);
        ((cs)localObject).a(new cf(this, i, k, j, m));
        ((cs)localObject).a(new cg(this, paramInt1));
        ((cs)localObject).a();
        return;
        j = TabLayout.a(a, 24);
        if (paramInt1 < d)
        {
          if (i != 0)
          {
            j = k - j;
            i = j;
          }
          else
          {
            j = m + j;
            i = j;
          }
        }
        else if (i != 0)
        {
          j = m + j;
          i = j;
        }
        else
        {
          j = k - j;
          i = j;
        }
      }
    }
  }
  
  boolean a()
  {
    boolean bool2 = false;
    int j = getChildCount();
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (getChildAt(i).getWidth() <= 0) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  float b()
  {
    return d + e;
  }
  
  void b(int paramInt)
  {
    if (b != paramInt)
    {
      b = paramInt;
      cn.d(this);
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((f >= 0) && (g > f)) {
      paramCanvas.drawRect(f, getHeight() - b, g, getHeight(), c);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((h != null) && (h.b()))
    {
      h.e();
      long l = h.g();
      paramInt1 = d;
      float f1 = h.f();
      a(paramInt1, Math.round((float)l * (1.0F - f1)));
      return;
    }
    c();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int m = 0;
    super.onMeasure(paramInt1, paramInt2);
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
      break label18;
    }
    label18:
    while ((TabLayout.j(a) != 1) || (TabLayout.m(a) != 1)) {
      return;
    }
    int n = getChildCount();
    int k = 0;
    int j = 0;
    label53:
    Object localObject;
    if (k < n)
    {
      localObject = getChildAt(k);
      if (((View)localObject).getVisibility() != 0) {
        break label239;
      }
    }
    label136:
    label224:
    label236:
    label239:
    for (int i = Math.max(j, ((View)localObject).getMeasuredWidth());; i = j)
    {
      k += 1;
      j = i;
      break label53;
      if (j <= 0) {
        break;
      }
      i = TabLayout.a(a, 16);
      if (j * n <= getMeasuredWidth() - i * 2)
      {
        k = 0;
        i = m;
        m = i;
        if (k >= n) {
          break label224;
        }
        localObject = (LinearLayout.LayoutParams)getChildAt(k).getLayoutParams();
        if ((width == j) && (weight == 0.0F)) {
          break label236;
        }
        width = j;
        weight = 0.0F;
        i = 1;
      }
      for (;;)
      {
        k += 1;
        break label136;
        TabLayout.b(a, 0);
        TabLayout.a(a, false);
        m = 1;
        if (m == 0) {
          break;
        }
        super.onMeasure(paramInt1, paramInt2);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */