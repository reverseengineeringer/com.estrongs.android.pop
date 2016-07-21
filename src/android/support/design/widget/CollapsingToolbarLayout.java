package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.design.f;
import android.support.design.i;
import android.support.design.j;
import android.support.v4.view.cn;
import android.support.v4.view.fr;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class CollapsingToolbarLayout
  extends FrameLayout
{
  private boolean a = true;
  private int b;
  private Toolbar c;
  private View d;
  private View e;
  private int f;
  private int g;
  private int h;
  private int i;
  private final Rect j = new Rect();
  private final n k;
  private boolean l;
  private boolean m;
  private Drawable n;
  private Drawable o;
  private int p;
  private boolean q;
  private cs r;
  private g s;
  private int t;
  private fr u;
  
  public CollapsingToolbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    cr.a(paramContext);
    k = new n(this);
    k.a(a.e);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.CollapsingToolbarLayout, paramInt, i.Widget_Design_CollapsingToolbar);
    k.c(paramContext.getInt(j.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
    k.d(paramContext.getInt(j.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
    paramInt = paramContext.getDimensionPixelSize(j.CollapsingToolbarLayout_expandedTitleMargin, 0);
    i = paramInt;
    h = paramInt;
    g = paramInt;
    f = paramInt;
    if (paramContext.hasValue(j.CollapsingToolbarLayout_expandedTitleMarginStart)) {
      f = paramContext.getDimensionPixelSize(j.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
    }
    if (paramContext.hasValue(j.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
      h = paramContext.getDimensionPixelSize(j.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
    }
    if (paramContext.hasValue(j.CollapsingToolbarLayout_expandedTitleMarginTop)) {
      g = paramContext.getDimensionPixelSize(j.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
    }
    if (paramContext.hasValue(j.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
      i = paramContext.getDimensionPixelSize(j.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
    }
    l = paramContext.getBoolean(j.CollapsingToolbarLayout_titleEnabled, true);
    setTitle(paramContext.getText(j.CollapsingToolbarLayout_title));
    k.f(i.TextAppearance_Design_CollapsingToolbar_Expanded);
    k.e(i.TextAppearance_AppCompat_Widget_ActionBar_Title);
    if (paramContext.hasValue(j.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
      k.f(paramContext.getResourceId(j.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
    }
    if (paramContext.hasValue(j.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
      k.e(paramContext.getResourceId(j.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
    }
    setContentScrim(paramContext.getDrawable(j.CollapsingToolbarLayout_contentScrim));
    setStatusBarScrim(paramContext.getDrawable(j.CollapsingToolbarLayout_statusBarScrim));
    b = paramContext.getResourceId(j.CollapsingToolbarLayout_toolbarId, -1);
    paramContext.recycle();
    setWillNotDraw(false);
    cn.a(this, new o(this));
  }
  
  private fr a(fr paramfr)
  {
    if (u != paramfr)
    {
      u = paramfr;
      requestLayout();
    }
    return paramfr.f();
  }
  
  private void a(int paramInt)
  {
    b();
    Interpolator localInterpolator;
    if (r == null)
    {
      r = do.a();
      r.a(600);
      cs localcs = r;
      if (paramInt > p)
      {
        localInterpolator = a.c;
        localcs.a(localInterpolator);
        r.a(new p(this));
      }
    }
    for (;;)
    {
      r.a(p, paramInt);
      r.a();
      return;
      localInterpolator = a.d;
      break;
      if (r.b()) {
        r.e();
      }
    }
  }
  
  private View b(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    View localView = paramView;
    for (paramView = localViewParent; (paramView != this) && (paramView != null); paramView = paramView.getParent()) {
      if ((paramView instanceof View)) {
        localView = (View)paramView;
      }
    }
    return localView;
  }
  
  private void b()
  {
    if (!a) {
      return;
    }
    c = null;
    d = null;
    if (b != -1)
    {
      c = ((Toolbar)findViewById(b));
      if (c != null) {
        d = b(c);
      }
    }
    int i1;
    if (c == null)
    {
      int i2 = getChildCount();
      i1 = 0;
      if (i1 >= i2) {
        break label119;
      }
      localObject = getChildAt(i1);
      if (!(localObject instanceof Toolbar)) {
        break label112;
      }
    }
    label112:
    label119:
    for (Object localObject = (Toolbar)localObject;; localObject = null)
    {
      c = ((Toolbar)localObject);
      c();
      a = false;
      return;
      i1 += 1;
      break;
    }
  }
  
  private static int c(View paramView)
  {
    Object localObject = paramView.getLayoutParams();
    if ((localObject instanceof ViewGroup.MarginLayoutParams))
    {
      localObject = (ViewGroup.MarginLayoutParams)localObject;
      int i1 = paramView.getHeight();
      int i2 = topMargin;
      return bottomMargin + (i1 + i2);
    }
    return paramView.getHeight();
  }
  
  private void c()
  {
    if ((!l) && (e != null))
    {
      ViewParent localViewParent = e.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(e);
      }
    }
    if ((l) && (c != null))
    {
      if (e == null) {
        e = new View(getContext());
      }
      if (e.getParent() == null) {
        c.addView(e, -1, -1);
      }
    }
  }
  
  private static dn d(View paramView)
  {
    dn localdn2 = (dn)paramView.getTag(f.view_offset_helper);
    dn localdn1 = localdn2;
    if (localdn2 == null)
    {
      localdn1 = new dn(paramView);
      paramView.setTag(f.view_offset_helper, localdn1);
    }
    return localdn1;
  }
  
  private void setScrimAlpha(int paramInt)
  {
    if (paramInt != p)
    {
      if ((n != null) && (c != null)) {
        cn.d(c);
      }
      p = paramInt;
      cn.d(this);
    }
  }
  
  protected CollapsingToolbarLayout.LayoutParams a()
  {
    return new CollapsingToolbarLayout.LayoutParams(super.generateDefaultLayoutParams());
  }
  
  protected FrameLayout.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new CollapsingToolbarLayout.LayoutParams(paramLayoutParams);
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i1 = 255;
    if (q != paramBoolean1)
    {
      if (!paramBoolean2) {
        break label36;
      }
      if (!paramBoolean1) {
        break label31;
      }
    }
    for (;;)
    {
      a(i1);
      q = paramBoolean1;
      return;
      label31:
      i1 = 0;
    }
    label36:
    if (paramBoolean1) {}
    for (;;)
    {
      setScrimAlpha(i1);
      break;
      i1 = 0;
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof CollapsingToolbarLayout.LayoutParams;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    b();
    if ((c == null) && (n != null) && (p > 0))
    {
      n.mutate().setAlpha(p);
      n.draw(paramCanvas);
    }
    if ((l) && (m)) {
      k.a(paramCanvas);
    }
    if ((o != null) && (p > 0)) {
      if (u == null) {
        break label153;
      }
    }
    label153:
    for (int i1 = u.b();; i1 = 0)
    {
      if (i1 > 0)
      {
        o.setBounds(0, -t, getWidth(), i1 - t);
        o.mutate().setAlpha(p);
        o.draw(paramCanvas);
      }
      return;
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    b();
    if ((paramView == c) && (n != null) && (p > 0))
    {
      n.mutate().setAlpha(p);
      n.draw(paramCanvas);
    }
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    boolean bool2 = false;
    Drawable localDrawable = o;
    boolean bool1 = bool2;
    if (localDrawable != null)
    {
      bool1 = bool2;
      if (localDrawable.isStateful()) {
        bool1 = false | localDrawable.setState(arrayOfInt);
      }
    }
    localDrawable = n;
    bool2 = bool1;
    if (localDrawable != null)
    {
      bool2 = bool1;
      if (localDrawable.isStateful()) {
        bool2 = bool1 | localDrawable.setState(arrayOfInt);
      }
    }
    if (bool2) {
      invalidate();
    }
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new CollapsingToolbarLayout.LayoutParams(getContext(), paramAttributeSet);
  }
  
  public int getCollapsedTitleGravity()
  {
    return k.c();
  }
  
  public Typeface getCollapsedTitleTypeface()
  {
    return k.d();
  }
  
  public Drawable getContentScrim()
  {
    return n;
  }
  
  public int getExpandedTitleGravity()
  {
    return k.b();
  }
  
  public int getExpandedTitleMarginBottom()
  {
    return i;
  }
  
  public int getExpandedTitleMarginEnd()
  {
    return h;
  }
  
  public int getExpandedTitleMarginStart()
  {
    return f;
  }
  
  public int getExpandedTitleMarginTop()
  {
    return g;
  }
  
  public Typeface getExpandedTitleTypeface()
  {
    return k.e();
  }
  
  final int getScrimTriggerOffset()
  {
    return cn.r(this) * 2;
  }
  
  public Drawable getStatusBarScrim()
  {
    return o;
  }
  
  public CharSequence getTitle()
  {
    if (l) {
      return k.i();
    }
    return null;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ViewParent localViewParent = getParent();
    if ((localViewParent instanceof AppBarLayout))
    {
      if (s == null) {
        s = new q(this, null);
      }
      ((AppBarLayout)localViewParent).a(s);
    }
    cn.y(this);
  }
  
  protected void onDetachedFromWindow()
  {
    ViewParent localViewParent = getParent();
    if ((s != null) && ((localViewParent instanceof AppBarLayout))) {
      ((AppBarLayout)localViewParent).b(s);
    }
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i2 = 1;
    int i3 = 0;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((l) && (e != null))
    {
      if ((!cn.J(e)) || (e.getVisibility() != 0)) {
        break label308;
      }
      paramBoolean = true;
      m = paramBoolean;
      if (m) {
        if ((d == null) || (d == this)) {
          break label417;
        }
      }
    }
    label154:
    label171:
    label308:
    label319:
    label328:
    label417:
    for (int i1 = d.getLayoutParams()).bottomMargin;; i1 = 0)
    {
      dh.b(this, e, j);
      k.b(j.left, paramInt4 - j.height() - i1, j.right, paramInt4 - i1);
      Object localObject;
      int i4;
      int i5;
      if (cn.h(this) == 1)
      {
        localObject = k;
        if (i2 == 0) {
          break label319;
        }
        i1 = h;
        i4 = j.bottom;
        i5 = g;
        if (i2 == 0) {
          break label328;
        }
      }
      for (i2 = f;; i2 = h)
      {
        ((n)localObject).a(i1, i4 + i5, paramInt3 - paramInt1 - i2, paramInt4 - paramInt2 - i);
        k.h();
        paramInt2 = getChildCount();
        paramInt1 = i3;
        while (paramInt1 < paramInt2)
        {
          localObject = getChildAt(paramInt1);
          if ((u != null) && (!cn.z((View)localObject)))
          {
            paramInt3 = u.b();
            if (((View)localObject).getTop() < paramInt3) {
              cn.e((View)localObject, paramInt3);
            }
          }
          d((View)localObject).a();
          paramInt1 += 1;
        }
        paramBoolean = false;
        break;
        i2 = 0;
        break label154;
        i1 = f;
        break label171;
      }
      if (c != null)
      {
        if ((l) && (TextUtils.isEmpty(k.i()))) {
          k.a(c.getTitle());
        }
        if ((d == null) || (d == this)) {
          setMinimumHeight(c(c));
        }
      }
      else
      {
        return;
      }
      setMinimumHeight(c(d));
      return;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    b();
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (n != null) {
      n.setBounds(0, 0, paramInt1, paramInt2);
    }
  }
  
  public void setCollapsedTitleGravity(int paramInt)
  {
    k.d(paramInt);
  }
  
  public void setCollapsedTitleTextAppearance(int paramInt)
  {
    k.e(paramInt);
  }
  
  public void setCollapsedTitleTextColor(int paramInt)
  {
    k.a(paramInt);
  }
  
  public void setCollapsedTitleTypeface(Typeface paramTypeface)
  {
    k.a(paramTypeface);
  }
  
  public void setContentScrim(Drawable paramDrawable)
  {
    Drawable localDrawable = null;
    if (n != paramDrawable)
    {
      if (n != null) {
        n.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable = paramDrawable.mutate();
      }
      n = localDrawable;
      if (n != null)
      {
        n.setBounds(0, 0, getWidth(), getHeight());
        n.setCallback(this);
        n.setAlpha(p);
      }
      cn.d(this);
    }
  }
  
  public void setContentScrimColor(int paramInt)
  {
    setContentScrim(new ColorDrawable(paramInt));
  }
  
  public void setContentScrimResource(int paramInt)
  {
    setContentScrim(android.support.v4.content.a.a(getContext(), paramInt));
  }
  
  public void setExpandedTitleColor(int paramInt)
  {
    k.b(paramInt);
  }
  
  public void setExpandedTitleGravity(int paramInt)
  {
    k.c(paramInt);
  }
  
  public void setExpandedTitleMarginBottom(int paramInt)
  {
    i = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginEnd(int paramInt)
  {
    h = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginStart(int paramInt)
  {
    f = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginTop(int paramInt)
  {
    g = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleTextAppearance(int paramInt)
  {
    k.f(paramInt);
  }
  
  public void setExpandedTitleTypeface(Typeface paramTypeface)
  {
    k.b(paramTypeface);
  }
  
  public void setScrimsShown(boolean paramBoolean)
  {
    if ((cn.H(this)) && (!isInEditMode())) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramBoolean, bool);
      return;
    }
  }
  
  public void setStatusBarScrim(Drawable paramDrawable)
  {
    Drawable localDrawable = null;
    if (o != paramDrawable)
    {
      if (o != null) {
        o.setCallback(null);
      }
      if (paramDrawable != null) {
        localDrawable = paramDrawable.mutate();
      }
      o = localDrawable;
      if (o != null)
      {
        if (o.isStateful()) {
          o.setState(getDrawableState());
        }
        android.support.v4.b.a.a.b(o, cn.h(this));
        paramDrawable = o;
        if (getVisibility() != 0) {
          break label124;
        }
      }
    }
    label124:
    for (boolean bool = true;; bool = false)
    {
      paramDrawable.setVisible(bool, false);
      o.setCallback(this);
      o.setAlpha(p);
      cn.d(this);
      return;
    }
  }
  
  public void setStatusBarScrimColor(int paramInt)
  {
    setStatusBarScrim(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarScrimResource(int paramInt)
  {
    setStatusBarScrim(android.support.v4.content.a.a(getContext(), paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    k.a(paramCharSequence);
  }
  
  public void setTitleEnabled(boolean paramBoolean)
  {
    if (paramBoolean != l)
    {
      l = paramBoolean;
      c();
      requestLayout();
    }
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      if ((o != null) && (o.isVisible() != bool)) {
        o.setVisible(bool, false);
      }
      if ((n != null) && (n.isVisible() != bool)) {
        n.setVisible(bool, false);
      }
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == n) || (paramDrawable == o);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CollapsingToolbarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */