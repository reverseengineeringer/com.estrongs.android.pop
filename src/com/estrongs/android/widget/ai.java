package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import com.estrongs.android.view.cd;
import com.estrongs.fs.h;
import java.util.LinkedList;
import java.util.List;

public class ai
  extends ao
{
  protected List<h> a = new LinkedList();
  protected boolean b;
  View c;
  View d;
  TranslateAnimation e;
  TranslateAnimation f;
  TranslateAnimation g;
  TranslateAnimation h;
  private cd p;
  private View q;
  private RealViewSwitcher r;
  private LinearLayout s;
  private boolean t = true;
  private AdapterView.OnItemClickListener u = new ak(this);
  
  public ai(Activity paramActivity, au paramau, boolean paramBoolean)
  {
    super(paramActivity, paramau);
    t = paramBoolean;
    s = ((LinearLayout)findViewById(2131362406));
    s.setBackgroundDrawable(themeManager.a(2130837605));
    if (paramBoolean) {
      d();
    }
    for (;;)
    {
      i.a(u);
      setSingleButton(getString(2131427340), null);
      return;
      s.setVisibility(8);
      r.removeViewAt(1);
    }
  }
  
  private void d()
  {
    if (p == null)
    {
      p = new aj(this, j, null, null);
      ((ViewGroup)q).addView(p.aq());
      p.j(com.estrongs.android.ui.theme.al.a(mContext).d(2131230738));
      p.a(11);
      p.a(u);
      p.a(o);
      p.g("SP://");
    }
  }
  
  private void e()
  {
    c = findViewById(2131362407);
    c.setBackgroundDrawable(themeManager.a(2130837514));
    c.setOnClickListener(new am(this));
  }
  
  private void f()
  {
    d = findViewById(2131362408);
    d.setBackgroundDrawable(themeManager.a(2130837561));
    d.setOnClickListener(new an(this));
  }
  
  protected int a()
  {
    return 2130903162;
  }
  
  protected void a(Context paramContext)
  {
    super.a(paramContext);
    q = ((ViewGroup)findViewById(2131362410));
    r = ((RealViewSwitcher)findViewById(2131362409));
    r.c(false);
    r.a(new al(this));
    e();
    f();
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  protected cd b()
  {
    if (r.h() == 0) {
      return i;
    }
    return p;
  }
  
  public void b(boolean paramBoolean)
  {
    super.b(paramBoolean);
    if (t)
    {
      p.a(11);
      p.b(false);
    }
  }
  
  public void dismiss()
  {
    super.dismiss();
    if (p != null) {
      p.a_();
    }
  }
  
  public void show()
  {
    super.show();
    if (b)
    {
      if (i.Y() == null) {
        i.K();
      }
      i.g();
      if (t) {
        p.g();
      }
      b = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */