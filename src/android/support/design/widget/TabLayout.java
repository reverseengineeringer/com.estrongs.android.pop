package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.support.design.e;
import android.support.design.i;
import android.support.design.j;
import android.support.v4.e.o;
import android.support.v4.e.p;
import android.support.v4.e.q;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bw;
import android.support.v4.view.cn;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;
import java.util.Iterator;

public class TabLayout
  extends HorizontalScrollView
{
  private static final o<ch> a = new q(16);
  private final o<cj> A = new p(12);
  private final ArrayList<ch> b = new ArrayList();
  private ch c;
  private final ce d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private ColorStateList j;
  private float k;
  private float l;
  private final int m;
  private int n = Integer.MAX_VALUE;
  private final int o;
  private final int p;
  private final int q;
  private int r;
  private int s;
  private int t;
  private cc u;
  private cs v;
  private ViewPager w;
  private bw x;
  private DataSetObserver y;
  private ci z;
  
  public TabLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    cr.a(paramContext);
    setHorizontalScrollBarEnabled(false);
    d = new ce(this, paramContext);
    super.addView(d, 0, new FrameLayout.LayoutParams(-2, -1));
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, j.TabLayout, paramInt, i.Widget_Design_TabLayout);
    d.b(paramAttributeSet.getDimensionPixelSize(j.TabLayout_tabIndicatorHeight, 0));
    d.a(paramAttributeSet.getColor(j.TabLayout_tabIndicatorColor, 0));
    paramInt = paramAttributeSet.getDimensionPixelSize(j.TabLayout_tabPadding, 0);
    h = paramInt;
    g = paramInt;
    f = paramInt;
    e = paramInt;
    e = paramAttributeSet.getDimensionPixelSize(j.TabLayout_tabPaddingStart, e);
    f = paramAttributeSet.getDimensionPixelSize(j.TabLayout_tabPaddingTop, f);
    g = paramAttributeSet.getDimensionPixelSize(j.TabLayout_tabPaddingEnd, g);
    h = paramAttributeSet.getDimensionPixelSize(j.TabLayout_tabPaddingBottom, h);
    i = paramAttributeSet.getResourceId(j.TabLayout_tabTextAppearance, i.TextAppearance_Design_Tab);
    paramContext = paramContext.obtainStyledAttributes(i, j.TextAppearance);
    try
    {
      k = paramContext.getDimensionPixelSize(j.TextAppearance_android_textSize, 0);
      j = paramContext.getColorStateList(j.TextAppearance_android_textColor);
      paramContext.recycle();
      if (paramAttributeSet.hasValue(j.TabLayout_tabTextColor)) {
        j = paramAttributeSet.getColorStateList(j.TabLayout_tabTextColor);
      }
      if (paramAttributeSet.hasValue(j.TabLayout_tabSelectedTextColor))
      {
        paramInt = paramAttributeSet.getColor(j.TabLayout_tabSelectedTextColor, 0);
        j = a(j.getDefaultColor(), paramInt);
      }
      o = paramAttributeSet.getDimensionPixelSize(j.TabLayout_tabMinWidth, -1);
      p = paramAttributeSet.getDimensionPixelSize(j.TabLayout_tabMaxWidth, -1);
      m = paramAttributeSet.getResourceId(j.TabLayout_tabBackground, 0);
      r = paramAttributeSet.getDimensionPixelSize(j.TabLayout_tabContentStart, 0);
      t = paramAttributeSet.getInt(j.TabLayout_tabMode, 1);
      s = paramAttributeSet.getInt(j.TabLayout_tabGravity, 0);
      paramAttributeSet.recycle();
      paramContext = getResources();
      l = paramContext.getDimensionPixelSize(e.design_tab_text_size_2line);
      q = paramContext.getDimensionPixelSize(e.design_tab_scrollable_min_width);
      f();
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  private int a(int paramInt, float paramFloat)
  {
    int i1 = 0;
    int i2 = 0;
    View localView2;
    View localView1;
    if (t == 0)
    {
      localView2 = d.getChildAt(paramInt);
      if (paramInt + 1 >= d.getChildCount()) {
        break label111;
      }
      localView1 = d.getChildAt(paramInt + 1);
      if (localView2 == null) {
        break label117;
      }
    }
    label111:
    label117:
    for (paramInt = localView2.getWidth();; paramInt = 0)
    {
      i1 = i2;
      if (localView1 != null) {
        i1 = localView1.getWidth();
      }
      i2 = localView2.getLeft();
      i1 = (int)((i1 + paramInt) * paramFloat * 0.5F) + i2 + localView2.getWidth() / 2 - getWidth() / 2;
      return i1;
      localView1 = null;
      break;
    }
  }
  
  private static ColorStateList a(int paramInt1, int paramInt2)
  {
    return new ColorStateList(new int[][] { SELECTED_STATE_SET, EMPTY_STATE_SET }, new int[] { paramInt2, paramInt1 });
  }
  
  private void a(int paramInt, float paramFloat, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i1 = Math.round(paramInt + paramFloat);
    if ((i1 < 0) || (i1 >= d.getChildCount())) {}
    do
    {
      return;
      if (paramBoolean2) {
        d.a(paramInt, paramFloat);
      }
      if ((v != null) && (v.b())) {
        v.e();
      }
      scrollTo(a(paramInt, paramFloat), 0);
    } while (!paramBoolean1);
    setSelectedTabView(i1);
  }
  
  private void a(TabItem paramTabItem)
  {
    ch localch = a();
    if (a != null) {
      localch.a(a);
    }
    if (b != null) {
      localch.a(b);
    }
    if (c != 0) {
      localch.a(c);
    }
    a(localch);
  }
  
  private void a(ch paramch, int paramInt)
  {
    paramch.b(paramInt);
    b.add(paramInt, paramch);
    int i1 = b.size();
    paramInt += 1;
    while (paramInt < i1)
    {
      ((ch)b.get(paramInt)).b(paramInt);
      paramInt += 1;
    }
  }
  
  private void a(bw parambw, boolean paramBoolean)
  {
    if ((x != null) && (y != null)) {
      x.unregisterDataSetObserver(y);
    }
    x = parambw;
    if ((paramBoolean) && (parambw != null))
    {
      if (y == null) {
        y = new cd(this, null);
      }
      parambw.registerDataSetObserver(y);
    }
    c();
  }
  
  private void a(View paramView)
  {
    if ((paramView instanceof TabItem))
    {
      a((TabItem)paramView);
      return;
    }
    throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
  }
  
  private void a(LinearLayout.LayoutParams paramLayoutParams)
  {
    if ((t == 1) && (s == 0))
    {
      width = 0;
      weight = 1.0F;
      return;
    }
    width = -2;
    weight = 0.0F;
  }
  
  private void a(boolean paramBoolean)
  {
    int i1 = 0;
    while (i1 < d.getChildCount())
    {
      View localView = d.getChildAt(i1);
      localView.setMinimumWidth(getTabMinWidth());
      a((LinearLayout.LayoutParams)localView.getLayoutParams());
      if (paramBoolean) {
        localView.requestLayout();
      }
      i1 += 1;
    }
  }
  
  private void b(ch paramch, int paramInt, boolean paramBoolean)
  {
    paramch = ch.d(paramch);
    d.addView(paramch, paramInt, e());
    if (paramBoolean) {
      paramch.setSelected(true);
    }
  }
  
  private int c(int paramInt)
  {
    return Math.round(getResourcesgetDisplayMetricsdensity * paramInt);
  }
  
  private cj c(ch paramch)
  {
    if (A != null) {}
    for (cj localcj1 = (cj)A.a();; localcj1 = null)
    {
      cj localcj2 = localcj1;
      if (localcj1 == null) {
        localcj2 = new cj(this, getContext());
      }
      cj.a(localcj2, paramch);
      localcj2.setFocusable(true);
      localcj2.setMinimumWidth(getTabMinWidth());
      return localcj2;
    }
  }
  
  private void c()
  {
    b();
    if (x != null)
    {
      int i2 = x.getCount();
      int i1 = 0;
      while (i1 < i2)
      {
        a(a().a(x.getPageTitle(i1)), false);
        i1 += 1;
      }
      if ((w != null) && (i2 > 0))
      {
        i1 = w.getCurrentItem();
        if ((i1 != getSelectedTabPosition()) && (i1 < getTabCount())) {
          b(a(i1));
        }
      }
      return;
    }
    b();
  }
  
  private void c(ch paramch, boolean paramBoolean)
  {
    paramch = ch.d(paramch);
    d.addView(paramch, e());
    if (paramBoolean) {
      paramch.setSelected(true);
    }
  }
  
  private void d()
  {
    int i2 = b.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ch.c((ch)b.get(i1));
      i1 += 1;
    }
  }
  
  private void d(int paramInt)
  {
    cj localcj = (cj)d.getChildAt(paramInt);
    d.removeViewAt(paramInt);
    if (localcj != null)
    {
      cj.a(localcj);
      A.a(localcj);
    }
    requestLayout();
  }
  
  private LinearLayout.LayoutParams e()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
    a(localLayoutParams);
    return localLayoutParams;
  }
  
  private void e(int paramInt)
  {
    if (paramInt == -1) {
      return;
    }
    if ((getWindowToken() == null) || (!cn.H(this)) || (d.a()))
    {
      a(paramInt, 0.0F, true);
      return;
    }
    int i1 = getScrollX();
    int i2 = a(paramInt, 0.0F);
    if (i1 != i2)
    {
      if (v == null)
      {
        v = do.a();
        v.a(a.b);
        v.a(300);
        v.a(new cb(this));
      }
      v.a(i1, i2);
      v.a();
    }
    d.a(paramInt, 300);
  }
  
  private void f()
  {
    if (t == 0) {}
    for (int i1 = Math.max(0, r - e);; i1 = 0)
    {
      cn.b(d, i1, 0, 0, 0);
      switch (t)
      {
      }
      for (;;)
      {
        a(true);
        return;
        d.setGravity(1);
        continue;
        d.setGravity(8388611);
      }
    }
  }
  
  private int getDefaultHeight()
  {
    int i2 = b.size();
    int i1 = 0;
    if (i1 < i2)
    {
      ch localch = (ch)b.get(i1);
      if ((localch == null) || (localch.c() == null) || (TextUtils.isEmpty(localch.e()))) {}
    }
    for (i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        return 72;
        i1 += 1;
        break;
      }
      return 48;
    }
  }
  
  private float getScrollPosition()
  {
    return d.b();
  }
  
  private int getTabMaxWidth()
  {
    return n;
  }
  
  private int getTabMinWidth()
  {
    if (o != -1) {
      return o;
    }
    if (t == 0) {
      return q;
    }
    return 0;
  }
  
  private int getTabScrollRange()
  {
    return Math.max(0, d.getWidth() - getWidth() - getPaddingLeft() - getPaddingRight());
  }
  
  private void setSelectedTabView(int paramInt)
  {
    int i2 = d.getChildCount();
    if ((paramInt < i2) && (!d.getChildAt(paramInt).isSelected()))
    {
      int i1 = 0;
      if (i1 < i2)
      {
        View localView = d.getChildAt(i1);
        if (i1 == paramInt) {}
        for (boolean bool = true;; bool = false)
        {
          localView.setSelected(bool);
          i1 += 1;
          break;
        }
      }
    }
  }
  
  public ch a()
  {
    ch localch2 = (ch)a.a();
    ch localch1 = localch2;
    if (localch2 == null) {
      localch1 = new ch(null);
    }
    ch.a(localch1, this);
    ch.a(localch1, c(localch1));
    return localch1;
  }
  
  public ch a(int paramInt)
  {
    return (ch)b.get(paramInt);
  }
  
  public void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    a(paramInt, paramFloat, paramBoolean, true);
  }
  
  public void a(ch paramch)
  {
    a(paramch, b.isEmpty());
  }
  
  public void a(ch paramch, int paramInt, boolean paramBoolean)
  {
    if (ch.a(paramch) != this) {
      throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }
    b(paramch, paramInt, paramBoolean);
    a(paramch, paramInt);
    if (paramBoolean) {
      paramch.f();
    }
  }
  
  public void a(ch paramch, boolean paramBoolean)
  {
    if (ch.a(paramch) != this) {
      throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }
    c(paramch, paramBoolean);
    a(paramch, b.size());
    if (paramBoolean) {
      paramch.f();
    }
  }
  
  public void addView(View paramView)
  {
    a(paramView);
  }
  
  public void addView(View paramView, int paramInt)
  {
    a(paramView);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    a(paramView);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a(paramView);
  }
  
  public void b()
  {
    int i1 = d.getChildCount() - 1;
    while (i1 >= 0)
    {
      d(i1);
      i1 -= 1;
    }
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      ch localch = (ch)localIterator.next();
      localIterator.remove();
      ch.b(localch);
      a.a(localch);
    }
    c = null;
  }
  
  public void b(int paramInt)
  {
    if (c != null) {}
    for (int i1 = c.d();; i1 = 0)
    {
      d(paramInt);
      localch = (ch)b.remove(paramInt);
      if (localch != null)
      {
        ch.b(localch);
        a.a(localch);
      }
      int i3 = b.size();
      int i2 = paramInt;
      while (i2 < i3)
      {
        ((ch)b.get(i2)).b(i2);
        i2 += 1;
      }
    }
    if (i1 == paramInt) {
      if (!b.isEmpty()) {
        break label123;
      }
    }
    label123:
    for (ch localch = null;; localch = (ch)b.get(Math.max(0, paramInt - 1)))
    {
      b(localch);
      return;
    }
  }
  
  void b(ch paramch)
  {
    b(paramch, true);
  }
  
  void b(ch paramch, boolean paramBoolean)
  {
    if (c == paramch)
    {
      if (c != null)
      {
        if (u != null) {
          u.c(c);
        }
        e(paramch.d());
      }
      return;
    }
    int i1;
    if (paramBoolean)
    {
      if (paramch == null) {
        break label157;
      }
      i1 = paramch.d();
      label57:
      if (i1 != -1) {
        setSelectedTabView(i1);
      }
      if (((c != null) && (c.d() != -1)) || (i1 == -1)) {
        break label162;
      }
      a(i1, 0.0F, true);
    }
    for (;;)
    {
      if ((c != null) && (u != null)) {
        u.b(c);
      }
      c = paramch;
      if ((c == null) || (u == null)) {
        break;
      }
      u.a(c);
      return;
      label157:
      i1 = -1;
      break label57;
      label162:
      e(i1);
    }
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return generateDefaultLayoutParams();
  }
  
  public int getSelectedTabPosition()
  {
    if (c != null) {
      return c.d();
    }
    return -1;
  }
  
  public int getTabCount()
  {
    return b.size();
  }
  
  public int getTabGravity()
  {
    return s;
  }
  
  public int getTabMode()
  {
    return t;
  }
  
  public ColorStateList getTabTextColors()
  {
    return j;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = 1;
    int i1 = c(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
    label76:
    View localView;
    switch (View.MeasureSpec.getMode(paramInt2))
    {
    default: 
      i1 = View.MeasureSpec.getSize(paramInt1);
      if (View.MeasureSpec.getMode(paramInt1) != 0)
      {
        if (p > 0)
        {
          i1 = p;
          n = i1;
        }
      }
      else
      {
        super.onMeasure(paramInt1, paramInt2);
        if (getChildCount() == 1)
        {
          localView = getChildAt(0);
          switch (t)
          {
          default: 
            paramInt1 = 0;
          }
        }
      }
      break;
    }
    for (;;)
    {
      if (paramInt1 != 0)
      {
        paramInt1 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom(), getLayoutParamsheight);
        localView.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), paramInt1);
      }
      return;
      paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.min(i1, View.MeasureSpec.getSize(paramInt2)), 1073741824);
      break;
      paramInt2 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
      break;
      i1 -= c(56);
      break label76;
      if (localView.getMeasuredWidth() < getMeasuredWidth()) {
        paramInt1 = 1;
      } else {
        paramInt1 = 0;
      }
    }
    if (localView.getMeasuredWidth() != getMeasuredWidth()) {}
    for (paramInt1 = i2;; paramInt1 = 0) {
      break;
    }
  }
  
  public void setOnTabSelectedListener(cc paramcc)
  {
    u = paramcc;
  }
  
  public void setSelectedTabIndicatorColor(int paramInt)
  {
    d.a(paramInt);
  }
  
  public void setSelectedTabIndicatorHeight(int paramInt)
  {
    d.b(paramInt);
  }
  
  public void setTabGravity(int paramInt)
  {
    if (s != paramInt)
    {
      s = paramInt;
      f();
    }
  }
  
  public void setTabMode(int paramInt)
  {
    if (paramInt != t)
    {
      t = paramInt;
      f();
    }
  }
  
  public void setTabTextColors(ColorStateList paramColorStateList)
  {
    if (j != paramColorStateList)
    {
      j = paramColorStateList;
      d();
    }
  }
  
  @Deprecated
  public void setTabsFromPagerAdapter(bw parambw)
  {
    a(parambw, false);
  }
  
  public void setupWithViewPager(ViewPager paramViewPager)
  {
    if ((w != null) && (z != null)) {
      w.removeOnPageChangeListener(z);
    }
    if (paramViewPager != null)
    {
      bw localbw = paramViewPager.getAdapter();
      if (localbw == null) {
        throw new IllegalArgumentException("ViewPager does not have a PagerAdapter set");
      }
      w = paramViewPager;
      if (z == null) {
        z = new ci(this);
      }
      ci.a(z);
      paramViewPager.addOnPageChangeListener(z);
      setOnTabSelectedListener(new ck(paramViewPager));
      a(localbw, true);
      return;
    }
    w = null;
    setOnTabSelectedListener(null);
    a(null, true);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return getTabScrollRange() > 0;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */