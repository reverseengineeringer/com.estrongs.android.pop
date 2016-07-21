package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.ui.navigation.TabIndicatorView;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.view.co;
import com.estrongs.android.view.eb;
import com.estrongs.fs.h;
import java.util.LinkedList;
import java.util.List;

public class aj
  extends ap
{
  protected List<h> a = new LinkedList();
  protected boolean b;
  View c;
  View d;
  private eb l;
  private View m;
  private RealViewSwitcher n;
  private View o;
  private boolean p = true;
  private TabIndicatorView q;
  private co r = new al(this);
  
  public aj(Activity paramActivity, av paramav, boolean paramBoolean)
  {
    super(paramActivity, paramav);
    p = paramBoolean;
    o = findViewById(2131625017);
    o.setBackgroundDrawable(themeManager.a(2130837845));
    if (paramBoolean) {
      d();
    }
    for (;;)
    {
      e.a(r);
      paramActivity = e.aA();
      if (paramActivity != null) {
        paramActivity.setVisibility(8);
      }
      setSingleButton(getString(2131231265), null);
      return;
      o.setVisibility(8);
      n.removeViewAt(1);
    }
  }
  
  private void d()
  {
    if (l == null)
    {
      l = new ak(this, f, null, null);
      ((ViewGroup)m).addView(l.aE());
      l.i(at.a(mContext).c(2131558661));
      l.a(11);
      l.a(r);
      l.a(k);
      l.j("SP://");
      View localView = l.aA();
      if (localView != null) {
        localView.setVisibility(8);
      }
    }
  }
  
  private void e()
  {
    c = findViewById(2131625018);
    c.setOnClickListener(new an(this));
  }
  
  private void f()
  {
    d = findViewById(2131625019);
    d.setOnClickListener(new ao(this));
  }
  
  protected int a()
  {
    return 2130903273;
  }
  
  protected void a(Context paramContext)
  {
    super.a(paramContext);
    m = ((ViewGroup)findViewById(2131625022));
    n = ((RealViewSwitcher)findViewById(2131625021));
    n.a(false);
    q = ((TabIndicatorView)findViewById(2131625020));
    n.setOnScreenSwitchListener(new am(this));
    e();
    f();
    q.a(0, 0.0F);
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  protected eb b()
  {
    if (n.getCurrentScreen() == 0) {
      return e;
    }
    return l;
  }
  
  public void b(boolean paramBoolean)
  {
    super.b(paramBoolean);
    if (p)
    {
      l.a(11);
      l.b(false);
    }
  }
  
  public void dismiss()
  {
    super.dismiss();
    if (l != null) {
      l.i_();
    }
  }
  
  public void show()
  {
    super.show();
    if (b)
    {
      e.g();
      if (p) {
        l.g();
      }
      b = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */