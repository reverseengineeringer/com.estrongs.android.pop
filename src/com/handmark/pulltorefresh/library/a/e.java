package com.handmark.pulltorefresh.library.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Orientation;
import com.handmark.pulltorefresh.library.a;

@SuppressLint({"ViewConstructor"})
public abstract class e
  extends FrameLayout
  implements a
{
  static final Interpolator a = new LinearInterpolator();
  protected final ImageView b;
  protected final ProgressBar c;
  protected final PullToRefreshBase.Mode d;
  protected final PullToRefreshBase.Orientation e;
  private LinearLayout f;
  private boolean g;
  private final TextView h;
  private final TextView i;
  private CharSequence j;
  private CharSequence k;
  private CharSequence l;
  
  public e(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.Orientation paramOrientation, TypedArray paramTypedArray)
  {
    super(paramContext);
    d = paramMode;
    e = paramOrientation;
    FrameLayout.LayoutParams localLayoutParams;
    int m;
    switch (f.a[paramOrientation.ordinal()])
    {
    default: 
      LayoutInflater.from(paramContext).inflate(2130903232, this);
      f = ((LinearLayout)findViewById(2131362664));
      h = ((TextView)f.findViewById(2131362667));
      c = ((ProgressBar)f.findViewById(2131362666));
      i = ((TextView)f.findViewById(2131362668));
      b = ((ImageView)f.findViewById(2131362665));
      localLayoutParams = (FrameLayout.LayoutParams)f.getLayoutParams();
      switch (f.b[paramMode.ordinal()])
      {
      default: 
        if (paramOrientation == PullToRefreshBase.Orientation.VERTICAL)
        {
          m = 80;
          label179:
          gravity = m;
          j = paramContext.getString(2131427328);
          k = paramContext.getString(2131427330);
          l = paramContext.getString(2131427329);
          if (paramTypedArray.hasValue(1))
          {
            paramOrientation = paramTypedArray.getDrawable(1);
            if (paramOrientation != null) {
              i.a(this, paramOrientation);
            }
          }
          if (paramTypedArray.hasValue(10))
          {
            paramOrientation = new TypedValue();
            paramTypedArray.getValue(10, paramOrientation);
            d(data);
          }
          if (paramTypedArray.hasValue(11))
          {
            paramOrientation = new TypedValue();
            paramTypedArray.getValue(11, paramOrientation);
            c(data);
          }
          if (paramTypedArray.hasValue(2))
          {
            paramOrientation = paramTypedArray.getColorStateList(2);
            if (paramOrientation != null) {
              b(paramOrientation);
            }
          }
          if (paramTypedArray.hasValue(3))
          {
            paramOrientation = paramTypedArray.getColorStateList(3);
            if (paramOrientation != null) {
              a(paramOrientation);
            }
          }
          paramOrientation = null;
          if (paramTypedArray.hasValue(6)) {
            paramOrientation = paramTypedArray.getDrawable(6);
          }
          switch (f.b[paramMode.ordinal()])
          {
          default: 
            if (paramTypedArray.hasValue(7)) {
              paramMode = paramTypedArray.getDrawable(7);
            }
            break;
          }
        }
        break;
      }
      break;
    }
    for (;;)
    {
      paramOrientation = paramMode;
      if (paramMode == null) {
        paramOrientation = paramContext.getResources().getDrawable(e());
      }
      b(paramOrientation);
      j();
      return;
      LayoutInflater.from(paramContext).inflate(2130903231, this);
      break;
      if (paramOrientation == PullToRefreshBase.Orientation.VERTICAL) {}
      for (m = 48;; m = 3)
      {
        gravity = m;
        j = paramContext.getString(2131427331);
        k = paramContext.getString(2131427333);
        l = paramContext.getString(2131427332);
        break;
      }
      m = 5;
      break label179;
      paramMode = paramOrientation;
      if (paramTypedArray.hasValue(17))
      {
        h.a("ptrDrawableTop", "ptrDrawableStart");
        paramMode = paramTypedArray.getDrawable(17);
        continue;
        if (paramTypedArray.hasValue(8))
        {
          paramMode = paramTypedArray.getDrawable(8);
        }
        else
        {
          paramMode = paramOrientation;
          if (paramTypedArray.hasValue(18))
          {
            h.a("ptrDrawableBottom", "ptrDrawableEnd");
            paramMode = paramTypedArray.getDrawable(18);
          }
        }
      }
    }
  }
  
  private void a(ColorStateList paramColorStateList)
  {
    if (i != null) {
      i.setTextColor(paramColorStateList);
    }
  }
  
  private void b(ColorStateList paramColorStateList)
  {
    if (h != null) {
      h.setTextColor(paramColorStateList);
    }
    if (i != null) {
      i.setTextColor(paramColorStateList);
    }
  }
  
  private void c(int paramInt)
  {
    if (i != null) {
      i.setTextAppearance(getContext(), paramInt);
    }
  }
  
  private void d(int paramInt)
  {
    if (h != null) {
      h.setTextAppearance(getContext(), paramInt);
    }
    if (i != null) {
      i.setTextAppearance(getContext(), paramInt);
    }
  }
  
  protected abstract void a();
  
  protected abstract void a(float paramFloat);
  
  public final void a(int paramInt)
  {
    getLayoutParamsheight = paramInt;
    requestLayout();
  }
  
  protected abstract void a(Drawable paramDrawable);
  
  public void a(CharSequence paramCharSequence)
  {
    j = paramCharSequence;
  }
  
  protected abstract void b();
  
  public final void b(float paramFloat)
  {
    if (!g) {
      a(paramFloat);
    }
  }
  
  public final void b(int paramInt)
  {
    getLayoutParamswidth = paramInt;
    requestLayout();
  }
  
  public final void b(Drawable paramDrawable)
  {
    g = (paramDrawable instanceof AnimationDrawable);
    a(paramDrawable);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    k = paramCharSequence;
  }
  
  protected abstract void c();
  
  public void c(CharSequence paramCharSequence)
  {
    l = paramCharSequence;
  }
  
  protected abstract void d();
  
  protected abstract int e();
  
  public final int f()
  {
    switch (f.a[e.ordinal()])
    {
    default: 
      return f.getHeight();
    }
    return f.getWidth();
  }
  
  public final void g()
  {
    if (h != null) {
      h.setText(j);
    }
    a();
  }
  
  public final void h()
  {
    if (h != null) {
      h.setText(k);
    }
    if (g) {}
    for (;;)
    {
      if (i != null) {
        i.setVisibility(8);
      }
      return;
      b();
    }
  }
  
  public final void i()
  {
    if (h != null) {
      h.setText(l);
    }
    c();
  }
  
  public final void j()
  {
    if (h != null) {
      h.setText(j);
    }
    b.setVisibility(0);
    if (g) {}
    for (;;)
    {
      if (i != null)
      {
        if (!TextUtils.isEmpty(i.getText())) {
          break;
        }
        i.setVisibility(8);
      }
      return;
      d();
    }
    i.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.handmark.pulltorefresh.library.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */