package android.support.v4.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.TextView;
import java.lang.ref.WeakReference;

public class PagerTitleStrip
  extends ViewGroup
  implements eh
{
  private static final int[] n = { 16842804, 16842901, 16842904, 16842927 };
  private static final int[] o = { 16843660 };
  private static final cb q = new cc();
  ViewPager a;
  TextView b;
  TextView c;
  TextView d;
  int e;
  private int f = -1;
  private float g = -1.0F;
  private int h;
  private int i;
  private boolean j;
  private boolean k;
  private final ca l = new ca(this, null);
  private WeakReference<bw> m;
  private int p;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      q = new cd();
      return;
    }
  }
  
  public PagerTitleStrip(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TextView localTextView = new TextView(paramContext);
    b = localTextView;
    addView(localTextView);
    localTextView = new TextView(paramContext);
    c = localTextView;
    addView(localTextView);
    localTextView = new TextView(paramContext);
    d = localTextView;
    addView(localTextView);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, n);
    int i1 = paramAttributeSet.getResourceId(0, 0);
    if (i1 != 0)
    {
      b.setTextAppearance(paramContext, i1);
      c.setTextAppearance(paramContext, i1);
      d.setTextAppearance(paramContext, i1);
    }
    int i2 = paramAttributeSet.getDimensionPixelSize(1, 0);
    if (i2 != 0) {
      a(0, i2);
    }
    if (paramAttributeSet.hasValue(2))
    {
      i2 = paramAttributeSet.getColor(2, 0);
      b.setTextColor(i2);
      c.setTextColor(i2);
      d.setTextColor(i2);
    }
    i = paramAttributeSet.getInteger(3, 80);
    paramAttributeSet.recycle();
    e = c.getTextColors().getDefaultColor();
    setNonPrimaryAlpha(0.6F);
    b.setEllipsize(TextUtils.TruncateAt.END);
    c.setEllipsize(TextUtils.TruncateAt.END);
    d.setEllipsize(TextUtils.TruncateAt.END);
    if (i1 != 0)
    {
      paramAttributeSet = paramContext.obtainStyledAttributes(i1, o);
      bool = paramAttributeSet.getBoolean(0, false);
      paramAttributeSet.recycle();
    }
    if (bool)
    {
      setSingleLineAllCaps(b);
      setSingleLineAllCaps(c);
      setSingleLineAllCaps(d);
    }
    for (;;)
    {
      h = ((int)(getResourcesgetDisplayMetricsdensity * 16.0F));
      return;
      b.setSingleLine();
      c.setSingleLine();
      d.setSingleLine();
    }
  }
  
  private static void setSingleLineAllCaps(TextView paramTextView)
  {
    q.a(paramTextView);
  }
  
  public void a(int paramInt, float paramFloat)
  {
    b.setTextSize(paramInt, paramFloat);
    c.setTextSize(paramInt, paramFloat);
    d.setTextSize(paramInt, paramFloat);
  }
  
  void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    int i4;
    int i9;
    int i3;
    int i8;
    int i5;
    int i1;
    int i7;
    int i6;
    int i2;
    int i10;
    int i12;
    int i11;
    int i13;
    if (paramInt != f)
    {
      a(paramInt, a.getAdapter());
      k = true;
      i4 = b.getMeasuredWidth();
      i9 = c.getMeasuredWidth();
      i3 = d.getMeasuredWidth();
      i8 = i9 / 2;
      i5 = getWidth();
      i1 = getHeight();
      i7 = getPaddingLeft();
      i6 = getPaddingRight();
      paramInt = getPaddingTop();
      i2 = getPaddingBottom();
      i10 = i6 + i8;
      float f2 = 0.5F + paramFloat;
      float f1 = f2;
      if (f2 > 1.0F) {
        f1 = f2 - 1.0F;
      }
      i8 = i5 - i10 - (int)(f1 * (i5 - (i7 + i8) - i10)) - i9 / 2;
      i9 = i8 + i9;
      i12 = b.getBaseline();
      i11 = c.getBaseline();
      i10 = d.getBaseline();
      i13 = Math.max(Math.max(i12, i11), i10);
      i12 = i13 - i12;
      i11 = i13 - i11;
      i10 = i13 - i10;
      i13 = b.getMeasuredHeight();
      int i14 = c.getMeasuredHeight();
      int i15 = d.getMeasuredHeight();
      i13 = Math.max(Math.max(i13 + i12, i14 + i11), i15 + i10);
      switch (i & 0x70)
      {
      default: 
        i2 = paramInt + i12;
        i1 = i11 + paramInt;
        paramInt += i10;
      }
    }
    for (;;)
    {
      c.layout(i8, i1, i9, c.getMeasuredHeight() + i1);
      i1 = Math.min(i7, i8 - h - i4);
      b.layout(i1, i2, i4 + i1, b.getMeasuredHeight() + i2);
      i1 = Math.max(i5 - i6 - i3, h + i9);
      d.layout(i1, paramInt, i1 + i3, d.getMeasuredHeight() + paramInt);
      g = paramFloat;
      k = false;
      return;
      if ((paramBoolean) || (paramFloat != g)) {
        break;
      }
      return;
      paramInt = (i1 - paramInt - i2 - i13) / 2;
      i2 = paramInt + i12;
      i1 = i11 + paramInt;
      paramInt += i10;
      continue;
      paramInt = i1 - i2 - i13;
      i2 = paramInt + i12;
      i1 = i11 + paramInt;
      paramInt += i10;
    }
  }
  
  void a(int paramInt, bw parambw)
  {
    Object localObject2 = null;
    int i1;
    if (parambw != null)
    {
      i1 = parambw.getCount();
      j = true;
      if ((paramInt < 1) || (parambw == null)) {
        break label236;
      }
    }
    label236:
    for (Object localObject1 = parambw.getPageTitle(paramInt - 1);; localObject1 = null)
    {
      b.setText((CharSequence)localObject1);
      TextView localTextView = c;
      if ((parambw != null) && (paramInt < i1)) {}
      for (localObject1 = parambw.getPageTitle(paramInt);; localObject1 = null)
      {
        localTextView.setText((CharSequence)localObject1);
        localObject1 = localObject2;
        if (paramInt + 1 < i1)
        {
          localObject1 = localObject2;
          if (parambw != null) {
            localObject1 = parambw.getPageTitle(paramInt + 1);
          }
        }
        d.setText((CharSequence)localObject1);
        i1 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int)((getWidth() - getPaddingLeft() - getPaddingRight()) * 0.8F)), Integer.MIN_VALUE);
        int i2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, getHeight() - getPaddingTop() - getPaddingBottom()), Integer.MIN_VALUE);
        b.measure(i1, i2);
        c.measure(i1, i2);
        d.measure(i1, i2);
        f = paramInt;
        if (!k) {
          a(paramInt, g, false);
        }
        j = false;
        return;
        i1 = 0;
        break;
      }
    }
  }
  
  void a(bw parambw1, bw parambw2)
  {
    if (parambw1 != null)
    {
      parambw1.unregisterDataSetObserver(l);
      m = null;
    }
    if (parambw2 != null)
    {
      parambw2.registerDataSetObserver(l);
      m = new WeakReference(parambw2);
    }
    if (a != null)
    {
      f = -1;
      g = -1.0F;
      a(a.getCurrentItem(), parambw2);
      requestLayout();
    }
  }
  
  int getMinHeight()
  {
    int i1 = 0;
    Drawable localDrawable = getBackground();
    if (localDrawable != null) {
      i1 = localDrawable.getIntrinsicHeight();
    }
    return i1;
  }
  
  public int getTextSpacing()
  {
    return h;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    Object localObject = getParent();
    if (!(localObject instanceof ViewPager)) {
      throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    }
    localObject = (ViewPager)localObject;
    bw localbw = ((ViewPager)localObject).getAdapter();
    ((ViewPager)localObject).setInternalPageChangeListener(l);
    ((ViewPager)localObject).setOnAdapterChangeListener(l);
    a = ((ViewPager)localObject);
    if (m != null) {}
    for (localObject = (bw)m.get();; localObject = null)
    {
      a((bw)localObject, localbw);
      return;
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (a != null)
    {
      a(a.getAdapter(), null);
      a.setInternalPageChangeListener(null);
      a.setOnAdapterChangeListener(null);
      a = null;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = 0.0F;
    if (a != null)
    {
      if (g >= 0.0F) {
        f1 = g;
      }
      a(f, f1, true);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
      throw new IllegalStateException("Must measure with an exact width");
    }
    int i2 = getPaddingTop() + getPaddingBottom();
    int i3 = getChildMeasureSpec(paramInt2, i2, -2);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = getChildMeasureSpec(paramInt1, (int)(i1 * 0.2F), -2);
    b.measure(paramInt1, i3);
    c.measure(paramInt1, i3);
    d.measure(paramInt1, i3);
    if (View.MeasureSpec.getMode(paramInt2) == 1073741824) {}
    for (paramInt1 = View.MeasureSpec.getSize(paramInt2);; paramInt1 = Math.max(getMinHeight(), i2 + paramInt1))
    {
      setMeasuredDimension(i1, cn.a(paramInt1, paramInt2, cn.l(c) << 16));
      return;
      paramInt1 = c.getMeasuredHeight();
    }
  }
  
  public void requestLayout()
  {
    if (!j) {
      super.requestLayout();
    }
  }
  
  public void setGravity(int paramInt)
  {
    i = paramInt;
    requestLayout();
  }
  
  public void setNonPrimaryAlpha(float paramFloat)
  {
    p = ((int)(255.0F * paramFloat) & 0xFF);
    int i1 = p << 24 | e & 0xFFFFFF;
    b.setTextColor(i1);
    d.setTextColor(i1);
  }
  
  public void setTextColor(int paramInt)
  {
    e = paramInt;
    c.setTextColor(paramInt);
    paramInt = p << 24 | e & 0xFFFFFF;
    b.setTextColor(paramInt);
    d.setTextColor(paramInt);
  }
  
  public void setTextSpacing(int paramInt)
  {
    h = paramInt;
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.PagerTitleStrip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */