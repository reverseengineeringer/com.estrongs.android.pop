package com.estrongs.android.pop.app.messagebox;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.GestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AbsListView.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout.LayoutParams;

@SuppressLint({"ViewConstructor"})
public class f
  extends HorizontalScrollView
{
  private int a = 0;
  private Context b;
  private int c;
  private int d;
  private boolean e;
  private GestureDetector f;
  private l g;
  private DisableScrollListView h;
  
  public f(Context paramContext, DisableScrollListView paramDisableScrollListView, View paramView1, View paramView2, l paraml)
  {
    super(paramContext);
    b = paramContext;
    h = paramDisableScrollListView;
    g = paraml;
    a(paramView1, paramView2);
    a();
  }
  
  private void a()
  {
    f = new GestureDetector(b, new m(this, new g(this)));
    setOnTouchListener(new h(this));
  }
  
  private void a(View paramView1, View paramView2)
  {
    setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    setVerticalScrollBarEnabled(false);
    setHorizontalScrollBarEnabled(false);
    setFillViewport(true);
    setFadingEdgeLength(0);
    Object localObject = View.inflate(b, 2130903328, this);
    View localView = ((View)localObject).findViewById(2131625183);
    ViewGroup localViewGroup = (ViewGroup)((View)localObject).findViewById(2131625184);
    localObject = (ViewGroup)((View)localObject).findViewById(2131625185);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((Activity)b).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    c = widthPixels;
    getLayoutParamswidth = (c * 2);
    d = (c / 6);
    localViewGroup.addView(paramView1, new LinearLayout.LayoutParams(c, -2));
    ((ViewGroup)localObject).addView(paramView2);
  }
  
  private void b()
  {
    e = true;
    g.c(this);
    post(new j(this));
  }
  
  public void a(boolean paramBoolean)
  {
    e = false;
    if (paramBoolean)
    {
      scrollTo(0, 0);
      return;
    }
    post(new i(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */