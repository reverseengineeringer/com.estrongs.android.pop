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
  View.OnTouchListener b = new r(this);
  private View c;
  private t d;
  
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
    a = new q(this);
  }
  
  public static void a(View paramView1, View paramView2)
  {
    new Handler().post(new s(paramView1, paramView2));
  }
  
  public void getView()
  {
    c = getChildAt(0);
    if (c != null) {
      a();
    }
  }
  
  public void setOnScrollListener(t paramt)
  {
    d = paramt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.ESScrollView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */