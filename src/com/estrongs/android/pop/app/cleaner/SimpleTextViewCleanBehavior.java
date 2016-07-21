package com.estrongs.android.pop.app.cleaner;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.widget.CoordinatorLayout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.ah;

public class SimpleTextViewCleanBehavior
  extends SimpleViewBehavior<TextView>
{
  private float a;
  private float b;
  private int c;
  private int d;
  private int e = -1;
  private int f = 0;
  private String g = "";
  
  public SimpleTextViewCleanBehavior(Context paramContext, AttributeSet paramAttributeSet)
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
    for (float f1 = b;; f1 = b + (a - b) * paramFloat)
    {
      paramTextView.setTextSize(0, f1);
      if ((c != Integer.MAX_VALUE) && (d != 0)) {
        paramTextView.setTextColor(((Integer)new ArgbEvaluator().evaluate(paramFloat, Integer.valueOf(d), Integer.valueOf(c))).intValue());
      }
      if (g.length() == 0)
      {
        g = paramTextView.getText().toString();
        e = g.indexOf("\n");
      }
      if (paramFloat != 1.0D) {
        break label227;
      }
      if (e == -1) {
        break;
      }
      f = ((int)(g.substring(0, e - 1).length() * b));
      paramTextView.setTextSize(0, f / g.replace("\n", "").length());
      paramTextView.setText(g.replace("\n", ""));
      return;
    }
    paramTextView.setText(g);
    return;
    label227:
    paramTextView.setText(g);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.SimpleTextViewCleanBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */