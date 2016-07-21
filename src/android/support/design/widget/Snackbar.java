package android.support.design.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.support.design.b;
import android.support.design.g;
import android.support.v4.view.cn;
import android.support.v4.view.ex;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;

public final class Snackbar
{
  private static final Handler a = new Handler(Looper.getMainLooper(), new bb());
  private final ViewGroup b;
  private final Context c;
  private final Snackbar.SnackbarLayout d;
  private int e;
  private bn f;
  private final AccessibilityManager g;
  private final bs h = new be(this);
  
  private Snackbar(ViewGroup paramViewGroup)
  {
    b = paramViewGroup;
    c = paramViewGroup.getContext();
    cr.a(c);
    d = ((Snackbar.SnackbarLayout)LayoutInflater.from(c).inflate(g.design_layout_snackbar, b, false));
    g = ((AccessibilityManager)c.getSystemService("accessibility"));
  }
  
  public static Snackbar a(View paramView, CharSequence paramCharSequence, int paramInt)
  {
    paramView = new Snackbar(a(paramView));
    paramView.a(paramCharSequence);
    paramView.a(paramInt);
    return paramView;
  }
  
  private static ViewGroup a(View paramView)
  {
    Object localObject2 = null;
    View localView = paramView;
    if ((localView instanceof CoordinatorLayout)) {
      return (ViewGroup)localView;
    }
    Object localObject1 = localObject2;
    if ((localView instanceof FrameLayout))
    {
      if (localView.getId() == 16908290) {
        return (ViewGroup)localView;
      }
      localObject1 = (ViewGroup)localView;
    }
    paramView = localView;
    if (localView != null)
    {
      paramView = localView.getParent();
      if (!(paramView instanceof View)) {
        break label77;
      }
    }
    label77:
    for (paramView = (View)paramView;; paramView = null)
    {
      localView = paramView;
      localObject2 = localObject1;
      if (paramView != null) {
        break;
      }
      return (ViewGroup)localObject1;
    }
  }
  
  private void c(int paramInt)
  {
    bq.a().a(h, paramInt);
  }
  
  private void d(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      cn.s(d).c(d.getHeight()).a(a.b).a(250L).a(new bl(this, paramInt)).c();
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(d.getContext(), b.design_snackbar_out);
    localAnimation.setInterpolator(a.b);
    localAnimation.setDuration(250L);
    localAnimation.setAnimationListener(new bc(this, paramInt));
    d.startAnimation(localAnimation);
  }
  
  private void e()
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      cn.b(d, d.getHeight());
      cn.s(d).c(0.0F).a(a.b).a(250L).a(new bj(this)).c();
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(d.getContext(), b.design_snackbar_in);
    localAnimation.setInterpolator(a.b);
    localAnimation.setDuration(250L);
    localAnimation.setAnimationListener(new bk(this));
    d.startAnimation(localAnimation);
  }
  
  private void e(int paramInt)
  {
    bq.a().a(h);
    if (f != null) {
      f.a(this, paramInt);
    }
    ViewParent localViewParent = d.getParent();
    if ((localViewParent instanceof ViewGroup)) {
      ((ViewGroup)localViewParent).removeView(d);
    }
  }
  
  private void f()
  {
    bq.a().b(h);
    if (f != null) {
      f.a(this);
    }
  }
  
  public Snackbar a(int paramInt)
  {
    e = paramInt;
    return this;
  }
  
  public Snackbar a(int paramInt, View.OnClickListener paramOnClickListener)
  {
    return a(c.getText(paramInt), paramOnClickListener);
  }
  
  public Snackbar a(CharSequence paramCharSequence)
  {
    d.getMessageView().setText(paramCharSequence);
    return this;
  }
  
  public Snackbar a(CharSequence paramCharSequence, View.OnClickListener paramOnClickListener)
  {
    Button localButton = d.getActionView();
    if ((TextUtils.isEmpty(paramCharSequence)) || (paramOnClickListener == null))
    {
      localButton.setVisibility(8);
      localButton.setOnClickListener(null);
      return this;
    }
    localButton.setVisibility(0);
    localButton.setText(paramCharSequence);
    localButton.setOnClickListener(new bd(this, paramOnClickListener));
    return this;
  }
  
  public void a()
  {
    bq.a().a(e, h);
  }
  
  final void b(int paramInt)
  {
    if (d.getVisibility() != 0)
    {
      e(paramInt);
      return;
    }
    d(paramInt);
  }
  
  public boolean b()
  {
    return bq.a().e(h);
  }
  
  final void c()
  {
    if (d.getParent() == null)
    {
      ViewGroup.LayoutParams localLayoutParams = d.getLayoutParams();
      if ((localLayoutParams instanceof v))
      {
        bm localbm = new bm(this);
        localbm.a(0.1F);
        localbm.b(0.6F);
        localbm.a(0);
        localbm.a(new bf(this));
        ((v)localLayoutParams).a(localbm);
      }
      b.addView(d);
    }
    d.setOnAttachStateChangeListener(new bg(this));
    if (cn.H(d))
    {
      e();
      return;
    }
    d.setOnLayoutChangeListener(new bi(this));
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */