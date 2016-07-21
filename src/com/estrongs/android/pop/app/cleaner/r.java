package com.estrongs.android.pop.app.cleaner;

import android.app.Activity;
import android.support.v4.a.a;
import android.support.v4.a.l;
import android.support.v4.view.cn;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import com.estrongs.android.pop.ac;
import com.estrongs.android.ui.a.d;
import com.estrongs.android.ui.view.ScanProgressView;
import com.estrongs.android.view.w;

public class r
{
  public static void a(Activity paramActivity, w paramw, Runnable paramRunnable)
  {
    paramw = paramw.w();
    paramw.c();
    View localView1 = paramActivity.findViewById(2131624113);
    View localView2 = paramActivity.findViewById(2131624122);
    View localView3 = paramActivity.findViewById(2131624123);
    View localView4 = paramActivity.findViewById(2131624124);
    localView2.setVisibility(0);
    localView3.setVisibility(0);
    localView4.setVisibility(0);
    if (ac.a() < 14)
    {
      a(paramw, localView1, localView2, paramRunnable);
      return;
    }
    paramw.b();
    cn.c(localView1, 1.0F);
    cn.c(localView2, 0.0F);
    cn.c(localView3, 0.0F);
    cn.c(localView4, 0.0F);
    cn.g(localView1, 90.0F);
    cn.g(paramw, 180.0F);
    l locall = a.a();
    locall.a(new s(localView1, paramw));
    locall.a(new t(localView2, paramActivity, localView3, localView4, paramRunnable));
    locall.a(500L);
    locall.a();
  }
  
  private static void a(ScanProgressView paramScanProgressView, View paramView1, View paramView2, Runnable paramRunnable)
  {
    Object localObject = new d(180.0F, 0.0F, paramScanProgressView.getWidth() / 2, paramScanProgressView.getHeight() / 2, 0.0F, false, false);
    ScaleAnimation localScaleAnimation = new ScaleAnimation(1.0F, 0.7F, 1.0F, 0.7F, 1, 0.5F, 1, 0.5F);
    AnimationSet localAnimationSet = new AnimationSet(true);
    localAnimationSet.addAnimation((Animation)localObject);
    localAnimationSet.addAnimation(localScaleAnimation);
    localAnimationSet.setDuration(500L);
    localAnimationSet.setFillAfter(true);
    localAnimationSet.setAnimationListener(new u(paramView2, paramView1, paramRunnable));
    paramScanProgressView.startAnimation(localAnimationSet);
    paramScanProgressView = new AlphaAnimation(1.0F, 0.0F);
    paramView2 = new d(90.0F, 0.0F, paramView1.getWidth() / 2, paramView1.getHeight() / 2, 0.0F, false, false);
    paramRunnable = new ScaleAnimation(1.0F, 0.7F, 1.0F, 0.7F, 1, 0.5F, 1, 0.5F);
    localObject = new AnimationSet(true);
    ((AnimationSet)localObject).addAnimation(paramView2);
    ((AnimationSet)localObject).addAnimation(paramScanProgressView);
    ((AnimationSet)localObject).addAnimation(paramRunnable);
    ((AnimationSet)localObject).setDuration(500L);
    ((AnimationSet)localObject).setFillAfter(true);
    paramView1.startAnimation((Animation)localObject);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */