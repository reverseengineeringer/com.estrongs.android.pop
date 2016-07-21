package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dianxinos.lockscreen.ac;
import com.dianxinos.lockscreen.ad;
import com.dianxinos.lockscreen.c.c;
import com.dianxinos.lockscreen.c.d;
import com.dianxinos.lockscreen.c.g;
import java.util.Calendar;

public class BatteryCardView
  extends LinearLayout
  implements d
{
  private Runnable a = new a(this);
  private Context b;
  private BatteryPercentView c;
  private TextView d;
  private TextView e;
  private TextView f;
  private String g;
  private int h = -1;
  
  public BatteryCardView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BatteryCardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b = paramContext;
    inflate(paramContext, ad.lock_screen_battery_info_layout, this);
  }
  
  private void c()
  {
    c = ((BatteryPercentView)findViewById(ac.battery_view));
    d = ((TextView)findViewById(ac.time_lable));
    ((TextView)findViewById(ac.date_lable)).setText(getWeekDayMonth());
    e = ((TextView)findViewById(ac.battery_percent_text));
    f = ((TextView)findViewById(ac.battery_percent_sign));
    setOnClickListener(new b(this));
    a(com.dianxinos.lockscreen.c.a.a(b).a());
    d();
  }
  
  private void d()
  {
    Object localObject = Calendar.getInstance();
    localObject = String.format("%02d:%02d", new Object[] { Integer.valueOf(((Calendar)localObject).get(11)), Integer.valueOf(((Calendar)localObject).get(12)) });
    if ((!TextUtils.isEmpty(g)) && (g.equals(localObject))) {}
    do
    {
      return;
      d.setText((CharSequence)localObject);
      g = ((String)localObject);
    } while (!g.a);
    g.a("DisplayCard", "Battery card refresh clock time:" + (String)localObject);
  }
  
  private String getWeekDayMonth()
  {
    long l = System.currentTimeMillis();
    String str1 = DateUtils.formatDateTime(b, l, 65552);
    String str2 = DateUtils.formatDateTime(b, l, 2);
    str1 = str2 + "  " + str1;
    if (g.a) {
      g.b("DisplayCard", str1);
    }
    return str1;
  }
  
  public void a()
  {
    com.dianxinos.lockscreen.c.a.a(b).a(this);
    d();
    postDelayed(a, 1000L);
  }
  
  public void a(c paramc)
  {
    if (h == e) {
      return;
    }
    if (paramc != null)
    {
      c.setPercent(e);
      e.setText(String.valueOf(e));
      if (g.a) {
        g.a("DisplayCard", "Battery card refresh battery per:" + e);
      }
    }
    for (;;)
    {
      if (f.getVisibility() != 0) {
        f.setVisibility(0);
      }
      h = e;
      return;
      c.setPercent(0);
      e.setText(String.valueOf(0));
    }
  }
  
  public void b()
  {
    com.dianxinos.lockscreen.c.a.a(b).b(this);
    removeCallbacks(a);
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    c();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.BatteryCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */