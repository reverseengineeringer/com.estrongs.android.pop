package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ScrollView;

public class ESScrollView
  extends ScrollView
{
  private Handler a;
  View.OnTouchListener b = new m(this);
  private View c;
  private o d;
  
  public ESScrollView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a()
  {
    setOnTouchListener(b);
    a = new l(this);
  }
  
  public static void a(View paramView1, View paramView2)
  {
    new Handler().post(new n(paramView1, paramView2));
  }
  
  public void a(o paramo)
  {
    d = paramo;
  }
  
  public void b()
  {
    c = getChildAt(0);
    if (c != null) {
      a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESScrollView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */