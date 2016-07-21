package com.estrongs.android.ui.feedback;

import android.content.Context;
import android.support.v4.view.cn;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class FeedbackRatingView
  extends RelativeLayout
{
  private Context a;
  private TextView b;
  private View c;
  private RatingBar d;
  private View.OnClickListener e;
  private ImageView f;
  private TranslateAnimation g;
  private boolean h = false;
  
  public FeedbackRatingView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FeedbackRatingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private void a()
  {
    if (g == null)
    {
      float f1 = getMeasuredWidth();
      float f2 = getMeasuredHeight();
      g = new TranslateAnimation(f1, cn.u(d) + d.getMeasuredWidth() * 4.0F / 5.0F, f2, cn.v(d));
      g.setDuration(1500L);
      g.setRepeatMode(1);
      g.setRepeatCount(-1);
      g.setAnimationListener(new g(this));
      g.setInterpolator(new i(this, null));
    }
    f.setAnimation(g);
    h = true;
    g.startNow();
  }
  
  private void a(Context paramContext)
  {
    a = paramContext;
    inflate(a, 2130903214, this);
    b = ((TextView)findViewById(2131624197));
    c = findViewById(2131624795);
    d = ((RatingBar)findViewById(2131624794));
    c.setEnabled(false);
    b.setEnabled(false);
    b.setText(a.getString(2131231200));
    f = ((ImageView)findViewById(2131624796));
    f.post(new d(this));
    d.setOnRatingBarChangeListener(new e(this));
    c.setOnClickListener(new f(this));
  }
  
  private void b()
  {
    h = false;
    if (g != null) {
      g.cancel();
    }
    f.clearAnimation();
    f.setVisibility(8);
  }
  
  public void setOnClickedListener(View.OnClickListener paramOnClickListener)
  {
    e = paramOnClickListener;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.feedback.FeedbackRatingView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */