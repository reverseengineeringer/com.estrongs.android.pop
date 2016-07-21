package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.dianxinos.lockscreen.a.d;
import com.dianxinos.lockscreen.ad;
import com.dianxinos.lockscreen.c.g;
import java.util.List;

public class RealTimeView
  extends FrameLayout
{
  private Runnable a = new m(this);
  private View b;
  private ImageView c;
  private TextView d;
  private TextView e;
  private TextView f;
  private com.dianxinos.lockscreen.a.c g;
  private int h;
  private List<d> i;
  private Bitmap j;
  private int k;
  private com.nineoldandroids.a.ac l;
  private float m;
  private boolean n;
  
  public RealTimeView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RealTimeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RealTimeView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    inflate(paramContext, ad.lock_screen_realtime_layout, this);
    b = findViewById(com.dianxinos.lockscreen.ac.ls_realtime_content);
    c = ((ImageView)findViewById(com.dianxinos.lockscreen.ac.ls_realtime_icon));
    d = ((TextView)findViewById(com.dianxinos.lockscreen.ac.ls_realtime_des));
    e = ((TextView)findViewById(com.dianxinos.lockscreen.ac.ls_realtime_time));
    f = ((TextView)findViewById(com.dianxinos.lockscreen.ac.ls_realtime_title));
    setOnClickListener(new p(this));
    c();
  }
  
  private void a(d paramd)
  {
    c.setImageDrawable(paramd.a());
    e.setText(g.a(paramd.d()));
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    int i1 = paramd.b();
    if (i1 >= 0)
    {
      localSpannableStringBuilder.append(String.valueOf(i1));
      localSpannableStringBuilder.setSpan(new AbsoluteSizeSpan(28, true), 0, localSpannableStringBuilder.length(), 33);
    }
    localSpannableStringBuilder.append(paramd.c());
    d.setText(localSpannableStringBuilder);
    if (g.a) {
      g.a("DisplayCard", "real time view refresh item, value: " + paramd.b() + " - des: " + paramd.c() + " - timeDes:" + g.a(paramd.d()));
    }
  }
  
  private void c()
  {
    g = com.dianxinos.lockscreen.c.a(getContext()).e();
    i = g.c();
    if ((i == null) || (i.isEmpty()))
    {
      if (g.a) {
        g.d("DisplayCard", "Real time refresh items is empty! error occurs");
      }
      return;
    }
    if (g.a) {
      g.a("DisplayCard", "real time title is : " + g.b() + " - item size is : " + i.size());
    }
    h = 0;
    f.setText(g.b());
    a((d)i.get(h));
  }
  
  private void d()
  {
    if ((j != null) && (!j.isRecycled()))
    {
      j.recycle();
      j = null;
    }
  }
  
  public void a()
  {
    if (g == null) {
      c();
    }
    if (i.size() > 1) {
      postDelayed(a, 4000L);
    }
    n = false;
  }
  
  public void b()
  {
    n = true;
    if (l != null)
    {
      l.m();
      l.f();
      l.b();
      l = null;
    }
    removeCallbacks(a);
    d();
    g = null;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (j != null) {
      paramCanvas.drawBitmap(j, 0.0F, k + m, null);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    k = paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.RealTimeView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */