package com.estrongs.android.widget.esswitch;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.CompoundButton;
import com.estrongs.android.pop.ah;

public class Switch
  extends CompoundButton
{
  private static final int[] B = { 2130771984 };
  private final Rect A = new Rect();
  private Drawable a;
  private Drawable b;
  private int c;
  private int d;
  private int e;
  private CharSequence f;
  private CharSequence g;
  private int h;
  private int i;
  private float j;
  private float k;
  private VelocityTracker l = VelocityTracker.obtain();
  private int m;
  private float n;
  private int o;
  private int p;
  private int q;
  private int r;
  private int s;
  private int t;
  private int u;
  private TextPaint v = new TextPaint(1);
  private ColorStateList w;
  private Layout x;
  private Layout y;
  private c z;
  
  public Switch(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Switch(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130771985);
  }
  
  public Switch(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = getResources();
    v.density = getDisplayMetricsdensity;
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, ah.e, paramInt, 0);
    a = paramAttributeSet.getDrawable(0);
    b = paramAttributeSet.getDrawable(1);
    f = paramAttributeSet.getText(2);
    g = paramAttributeSet.getText(3);
    c = paramAttributeSet.getDimensionPixelSize(4, 0);
    d = paramAttributeSet.getDimensionPixelSize(6, 0);
    e = paramAttributeSet.getDimensionPixelSize(7, 0);
    paramInt = paramAttributeSet.getResourceId(5, 0);
    if (paramInt != 0) {
      a(paramContext, paramInt);
    }
    paramAttributeSet.recycle();
    paramContext = ViewConfiguration.get(paramContext);
    i = paramContext.getScaledTouchSlop();
    m = paramContext.getScaledMinimumFlingVelocity();
    refreshDrawableState();
    setChecked(isChecked());
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    Typeface localTypeface = null;
    switch (paramInt1)
    {
    }
    for (;;)
    {
      a(localTypeface, paramInt2);
      return;
      localTypeface = Typeface.SANS_SERIF;
      continue;
      localTypeface = Typeface.SERIF;
      continue;
      localTypeface = Typeface.MONOSPACE;
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    paramMotionEvent = MotionEvent.obtain(paramMotionEvent);
    paramMotionEvent.setAction(3);
    super.onTouchEvent(paramMotionEvent);
    paramMotionEvent.recycle();
  }
  
  private void a(boolean paramBoolean)
  {
    setChecked(paramBoolean);
  }
  
  private boolean a()
  {
    return n >= b() / 2;
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    a.getPadding(A);
    int i1 = s;
    int i2 = i;
    int i3 = r + (int)(n + 0.5F) - i;
    int i4 = q;
    int i5 = A.left;
    int i6 = A.right;
    int i7 = i;
    int i8 = u;
    int i9 = i;
    return (paramFloat1 > i3) && (paramFloat1 < i4 + i3 + i5 + i6 + i7) && (paramFloat2 > i1 - i2) && (paramFloat2 < i8 + i9);
  }
  
  private int b()
  {
    if (b == null) {
      return 0;
    }
    b.getPadding(A);
    return o - q - A.left - A.right;
  }
  
  private void b(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    h = 0;
    int i1;
    if ((paramMotionEvent.getAction() == 1) && (isEnabled()))
    {
      i1 = 1;
      a(paramMotionEvent);
      if (i1 == 0) {
        break label98;
      }
      l.computeCurrentVelocity(1000);
      float f1 = l.getXVelocity();
      if (Math.abs(f1) <= m) {
        break label89;
      }
      if (f1 <= 0.0F) {
        break label83;
      }
    }
    for (;;)
    {
      a(bool);
      return;
      i1 = 0;
      break;
      label83:
      bool = false;
      continue;
      label89:
      bool = a();
    }
    label98:
    a(isChecked());
  }
  
  private Layout c(CharSequence paramCharSequence)
  {
    if (z != null) {
      paramCharSequence = z.a(paramCharSequence, this);
    }
    for (;;)
    {
      return new StaticLayout(paramCharSequence, v, (int)Math.ceil(Layout.getDesiredWidth(paramCharSequence, v)), Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, true);
    }
  }
  
  public void a(Context paramContext, int paramInt)
  {
    paramContext = paramContext.obtainStyledAttributes(paramInt, ah.g);
    ColorStateList localColorStateList = paramContext.getColorStateList(3);
    if (localColorStateList != null)
    {
      w = localColorStateList;
      paramInt = paramContext.getDimensionPixelSize(0, 0);
      if ((paramInt != 0) && (paramInt != v.getTextSize()))
      {
        v.setTextSize(paramInt);
        requestLayout();
      }
      a(paramContext.getInt(1, -1), paramContext.getInt(2, -1));
      if (!paramContext.getBoolean(7, false)) {
        break label128;
      }
      z = new a(getContext());
      z.a(true);
    }
    for (;;)
    {
      paramContext.recycle();
      return;
      w = getTextColors();
      break;
      label128:
      z = null;
    }
  }
  
  public void a(Typeface paramTypeface)
  {
    if (v.getTypeface() != paramTypeface)
    {
      v.setTypeface(paramTypeface);
      requestLayout();
      invalidate();
    }
  }
  
  public void a(Typeface paramTypeface, int paramInt)
  {
    boolean bool = false;
    if (paramInt > 0)
    {
      int i1;
      if (paramTypeface == null)
      {
        paramTypeface = Typeface.defaultFromStyle(paramInt);
        a(paramTypeface);
        if (paramTypeface == null) {
          break label88;
        }
        i1 = paramTypeface.getStyle();
        label31:
        paramInt = (i1 ^ 0xFFFFFFFF) & paramInt;
        paramTypeface = v;
        if ((paramInt & 0x1) != 0) {
          bool = true;
        }
        paramTypeface.setFakeBoldText(bool);
        paramTypeface = v;
        if ((paramInt & 0x2) == 0) {
          break label94;
        }
      }
      label88:
      label94:
      for (float f1 = -0.25F;; f1 = 0.0F)
      {
        paramTypeface.setTextSkewX(f1);
        return;
        paramTypeface = Typeface.create(paramTypeface, paramInt);
        break;
        i1 = 0;
        break label31;
      }
    }
    v.setFakeBoldText(false);
    v.setTextSkewX(0.0F);
    a(paramTypeface);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    f = paramCharSequence;
    requestLayout();
  }
  
  public void b(CharSequence paramCharSequence)
  {
    g = paramCharSequence;
    requestLayout();
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    if (a != null) {
      a.setState(arrayOfInt);
    }
    if (b != null) {
      b.setState(arrayOfInt);
    }
    invalidate();
  }
  
  public int getCompoundPaddingRight()
  {
    int i2 = super.getCompoundPaddingRight() + o;
    int i1 = i2;
    if (!TextUtils.isEmpty(getText())) {
      i1 = i2 + e;
    }
    return i1;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (isChecked()) {
      mergeDrawableStates(arrayOfInt, B);
    }
    return arrayOfInt;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i3 = r;
    int i1 = s;
    int i6 = t;
    int i2 = u;
    b.setBounds(i3, i1, i6, i2);
    b.draw(paramCanvas);
    paramCanvas.save();
    b.getPadding(A);
    int i5 = i3 + A.left;
    i3 = A.top;
    int i7 = A.right;
    int i4 = A.bottom;
    paramCanvas.clipRect(i5, i1, i6 - i7, i2);
    a.getPadding(A);
    i7 = (int)(n + 0.5F);
    i6 = i5 - A.left + i7;
    int i8 = q;
    i5 = A.right + (i5 + i7 + i8);
    a.setBounds(i6, i1, i5, i2);
    a.draw(paramCanvas);
    if (w != null) {
      v.setColor(w.getColorForState(getDrawableState(), w.getDefaultColor()));
    }
    v.drawableState = getDrawableState();
    if (a()) {}
    for (Layout localLayout = x;; localLayout = y)
    {
      paramCanvas.translate((i6 + i5) / 2 - localLayout.getWidth() / 2, (i3 + i1 + (i2 - i4)) / 2 - localLayout.getHeight() / 2);
      localLayout.draw(paramCanvas);
      paramCanvas.restore();
      return;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    float f1;
    if (isChecked())
    {
      f1 = b();
      n = f1;
      paramInt3 = getWidth() - getPaddingRight();
      paramInt4 = o;
      switch (getGravity() & 0x70)
      {
      default: 
        paramInt2 = getPaddingTop();
        paramInt1 = p + paramInt2;
      }
    }
    for (;;)
    {
      r = (paramInt3 - paramInt4);
      s = paramInt2;
      u = paramInt1;
      t = paramInt3;
      return;
      f1 = 0.0F;
      break;
      paramInt2 = (getPaddingTop() + getHeight() - getPaddingBottom()) / 2 - p / 2;
      paramInt1 = p + paramInt2;
      continue;
      paramInt1 = getHeight() - getPaddingBottom();
      paramInt2 = paramInt1 - p;
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getSize(paramInt2);
    if (x == null) {
      x = c(f);
    }
    if (y == null) {
      y = c(g);
    }
    b.getPadding(A);
    int i5 = Math.max(x.getWidth(), y.getWidth());
    int i6 = Math.max(d, i5 * 2 + c * 4 + A.left + A.right);
    int i7 = b.getIntrinsicHeight();
    q = (i5 + c * 2);
    switch (i1)
    {
    case 0: 
    default: 
      switch (i2)
      {
      }
      break;
    }
    for (;;)
    {
      o = i6;
      p = i7;
      super.onMeasure(paramInt1, paramInt2);
      if (getMeasuredHeight() < i7) {}
      return;
      Math.min(i3, i6);
      break;
      Math.min(i4, i7);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    l.addMovement(paramMotionEvent);
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    for (;;)
    {
      bool = super.onTouchEvent(paramMotionEvent);
      float f1;
      float f2;
      do
      {
        return bool;
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        if ((!isEnabled()) || (!a(f1, f2))) {
          break;
        }
        h = 1;
        j = f1;
        k = f2;
        break;
        switch (h)
        {
        case 0: 
        default: 
          break;
        case 1: 
          f1 = paramMotionEvent.getX();
          f2 = paramMotionEvent.getY();
          if ((Math.abs(f1 - j) <= i) && (Math.abs(f2 - k) <= i)) {
            break;
          }
          h = 2;
          getParent().requestDisallowInterceptTouchEvent(true);
          j = f1;
          k = f2;
          return true;
        case 2: 
          f1 = paramMotionEvent.getX();
          f2 = Math.max(0.0F, Math.min(f1 - j + n, b()));
        }
      } while (f2 == n);
      n = f2;
      j = f1;
      invalidate();
      return true;
      if (h == 2)
      {
        b(paramMotionEvent);
        return true;
      }
      h = 0;
      l.clear();
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    super.setChecked(paramBoolean);
    if (paramBoolean) {}
    for (float f1 = b();; f1 = 0.0F)
    {
      n = f1;
      invalidate();
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == a) || (paramDrawable == b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.esswitch.Switch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */