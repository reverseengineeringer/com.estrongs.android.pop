package com.estrongs.android.pop.app.cleaner;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.widget.CoordinatorLayout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.ah;

public class SimpleTextViewBehavior
  extends SimpleViewBehavior<TextView>
{
  private float a;
  private float b;
  private int c;
  private int d;
  
  public SimpleTextViewBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ah.EasyCoordinatorView);
    a = paramContext.getDimension(14, 2.14748365E9F);
    c = paramContext.getColor(15, Integer.MAX_VALUE);
  }
  
  protected void a(CoordinatorLayout paramCoordinatorLayout, TextView paramTextView, View paramView)
  {
    super.e(paramCoordinatorLayout, paramTextView, paramView);
    b = paramTextView.getTextSize();
    d = paramTextView.getCurrentTextColor();
  }
  
  public void a(TextView paramTextView, float paramFloat)
  {
    super.a(paramTextView, paramFloat);
    if (a == 2.14748365E9F) {}
    for (float f = b;; f = b + (a - b) * paramFloat)
    {
      paramTextView.setTextSize(0, f);
      if ((c != Integer.MAX_VALUE) && (d != 0)) {
        paramTextView.setTextColor(((Integer)new ArgbEvaluator().evaluate(paramFloat, Integer.valueOf(d), Integer.valueOf(c))).intValue());
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.SimpleTextViewBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */