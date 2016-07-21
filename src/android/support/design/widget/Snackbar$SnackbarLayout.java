package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.design.e;
import android.support.design.f;
import android.support.design.g;
import android.support.design.j;
import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class Snackbar$SnackbarLayout
  extends LinearLayout
{
  private TextView a;
  private Button b;
  private int c;
  private int d;
  private bp e;
  private bo f;
  
  public Snackbar$SnackbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Snackbar$SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, j.SnackbarLayout);
    c = paramAttributeSet.getDimensionPixelSize(j.SnackbarLayout_android_maxWidth, -1);
    d = paramAttributeSet.getDimensionPixelSize(j.SnackbarLayout_maxActionInlineWidth, -1);
    if (paramAttributeSet.hasValue(j.SnackbarLayout_elevation)) {
      cn.l(this, paramAttributeSet.getDimensionPixelSize(j.SnackbarLayout_elevation, 0));
    }
    paramAttributeSet.recycle();
    setClickable(true);
    LayoutInflater.from(paramContext).inflate(g.design_layout_snackbar_include, this);
    cn.d(this, 1);
    cn.c(this, 1);
  }
  
  private static void a(View paramView, int paramInt1, int paramInt2)
  {
    if (cn.C(paramView))
    {
      cn.b(paramView, cn.m(paramView), paramInt1, cn.n(paramView), paramInt2);
      return;
    }
    paramView.setPadding(paramView.getPaddingLeft(), paramInt1, paramView.getPaddingRight(), paramInt2);
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = false;
    if (paramInt1 != getOrientation())
    {
      setOrientation(paramInt1);
      bool = true;
    }
    if ((a.getPaddingTop() != paramInt2) || (a.getPaddingBottom() != paramInt3))
    {
      a(a, paramInt2, paramInt3);
      bool = true;
    }
    return bool;
  }
  
  void a(int paramInt1, int paramInt2)
  {
    cn.c(a, 0.0F);
    cn.s(a).a(1.0F).a(paramInt2).b(paramInt1).c();
    if (b.getVisibility() == 0)
    {
      cn.c(b, 0.0F);
      cn.s(b).a(1.0F).a(paramInt2).b(paramInt1).c();
    }
  }
  
  void b(int paramInt1, int paramInt2)
  {
    cn.c(a, 1.0F);
    cn.s(a).a(0.0F).a(paramInt2).b(paramInt1).c();
    if (b.getVisibility() == 0)
    {
      cn.c(b, 1.0F);
      cn.s(b).a(0.0F).a(paramInt2).b(paramInt1).c();
    }
  }
  
  Button getActionView()
  {
    return b;
  }
  
  TextView getMessageView()
  {
    return a;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (f != null) {
      f.a(this);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (f != null) {
      f.b(this);
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a = ((TextView)findViewById(f.snackbar_text));
    b = ((Button)findViewById(f.snackbar_action));
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (e != null) {
      e.a(this, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = paramInt1;
    if (c > 0)
    {
      i = paramInt1;
      if (getMeasuredWidth() > c)
      {
        i = View.MeasureSpec.makeMeasureSpec(c, 1073741824);
        super.onMeasure(i, paramInt2);
      }
    }
    int j = getResources().getDimensionPixelSize(e.design_snackbar_padding_vertical_2lines);
    int k = getResources().getDimensionPixelSize(e.design_snackbar_padding_vertical);
    if (a.getLayout().getLineCount() > 1)
    {
      paramInt1 = 1;
      if ((paramInt1 == 0) || (d <= 0) || (b.getMeasuredWidth() <= d)) {
        break label142;
      }
      if (!a(1, j, j - k)) {
        break label170;
      }
      paramInt1 = 1;
    }
    for (;;)
    {
      if (paramInt1 != 0) {
        super.onMeasure(i, paramInt2);
      }
      return;
      paramInt1 = 0;
      break;
      label142:
      if (paramInt1 != 0) {}
      for (paramInt1 = j;; paramInt1 = k)
      {
        if (!a(0, paramInt1, paramInt1)) {
          break label170;
        }
        paramInt1 = 1;
        break;
      }
      label170:
      paramInt1 = 0;
    }
  }
  
  void setOnAttachStateChangeListener(bo parambo)
  {
    f = parambo;
  }
  
  void setOnLayoutChangeListener(bp parambp)
  {
    e = parambp;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.SnackbarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */