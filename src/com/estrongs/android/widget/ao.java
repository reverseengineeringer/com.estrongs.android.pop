package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.view.ca;
import com.estrongs.android.view.cd;

public class ao
  extends cg
{
  protected cd i;
  protected Activity j;
  protected View k;
  protected au l;
  protected View m;
  protected TextView n;
  protected ca o = new ap(this);
  
  public ao(Activity paramActivity, au paramau)
  {
    super(paramActivity);
    super.setOnDismissListener(new aq(this));
    j = paramActivity;
    l = paramau;
    a(paramActivity);
    c();
  }
  
  protected int a()
  {
    return 2130903158;
  }
  
  protected void a(Context paramContext)
  {
    paramContext = g.a(paramContext).inflate(a(), null);
    paramContext.setMinimumWidth(1000);
    setContentView(paramContext);
    k = ((ViewGroup)findViewById(2131362386));
    m = ((ViewGroup)findViewById(2131362384));
    if (m != null)
    {
      m.setOnClickListener(new ar(this));
      n = ((TextView)findViewById(2131362385));
    }
  }
  
  protected cd b()
  {
    return i;
  }
  
  public void b(boolean paramBoolean)
  {
    i.a(i.B());
    i.b(false);
  }
  
  protected void c()
  {
    if (i == null)
    {
      i = new as(this, j, null, null);
      i.j(al.a(mContext).d(2131230738));
      i.a(11);
      i.a(new at(this));
      ((ViewGroup)k).addView(i.aq());
      i.a(o);
      i.g("gallery://local/buckets/");
    }
  }
  
  public void dismiss()
  {
    super.dismiss();
    if (i != null) {
      i.a_();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */