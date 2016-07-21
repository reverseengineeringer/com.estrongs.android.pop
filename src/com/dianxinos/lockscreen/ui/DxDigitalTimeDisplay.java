package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dianxinos.lockscreen.ac;
import com.dianxinos.lockscreen.ad;

public class DxDigitalTimeDisplay
  extends LinearLayout
  implements View.OnClickListener
{
  public View.OnClickListener a = null;
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private int f;
  private int g;
  private Handler h = new k(this);
  private int i;
  private int j;
  
  public DxDigitalTimeDisplay(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    int k;
    if (paramInt1 > paramInt2) {
      k = paramInt1 - 1;
    }
    do
    {
      return k;
      k = paramInt1;
    } while (paramInt1 >= paramInt2);
    return paramInt1 + 1;
  }
  
  private void a()
  {
    inflate(getContext(), ad.digital_time_display, this);
  }
  
  private int b(int paramInt1, int paramInt2)
  {
    int k;
    if (Math.abs(paramInt1 - paramInt2) <= 7) {
      k = a(paramInt1, paramInt2);
    }
    do
    {
      return k;
      if (paramInt1 > paramInt2) {
        return paramInt1 - 7;
      }
      k = paramInt1;
    } while (paramInt1 >= paramInt2);
    return paramInt1 + 7;
  }
  
  private void b()
  {
    int m = 0;
    if (j > 0) {}
    for (int k = j;; k = 0)
    {
      if (i > 0) {
        m = i;
      }
      if ((m < 10) && (m != 0)) {}
      for (String str = "0" + String.valueOf(m);; str = String.valueOf(m))
      {
        b.setText(String.valueOf(k));
        d.setText(str);
        h.sendEmptyMessageDelayed(1, 40L);
        return;
      }
    }
  }
  
  public void onClick(View paramView)
  {
    if (a != null) {
      a.onClick(this);
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setOnClickListener(this);
    b = ((TextView)findViewById(ac.digital_time_text_hours));
    c = ((TextView)findViewById(ac.digital_time_text_hours_lable));
    d = ((TextView)findViewById(ac.digital_time_text_minutes));
    e = ((TextView)findViewById(ac.digital_time_text_minutes_lable));
    setClickable(true);
    setFocusable(true);
    setDescendantFocusability(393216);
  }
  
  public void setOnDigitalClickListener(View.OnClickListener paramOnClickListener)
  {
    a = paramOnClickListener;
  }
  
  public void setTextColor(int paramInt)
  {
    b.setTextColor(paramInt);
    c.setTextColor(paramInt);
    d.setTextColor(paramInt);
    e.setTextColor(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.DxDigitalTimeDisplay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */