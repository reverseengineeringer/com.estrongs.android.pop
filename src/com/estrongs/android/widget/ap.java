package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.view.dv;
import com.estrongs.android.view.eb;

public class ap
  extends ci
{
  protected eb e;
  protected Activity f;
  protected View g;
  protected av h;
  protected View i;
  protected TextView j;
  protected dv k = new aq(this);
  
  public ap(Activity paramActivity, av paramav)
  {
    super(paramActivity);
    super.setOnDismissListener(new ar(this));
    f = paramActivity;
    h = paramav;
    a(paramActivity);
    c();
  }
  
  protected int a()
  {
    return 2130903269;
  }
  
  protected void a(Context paramContext)
  {
    paramContext = k.a(paramContext).inflate(a(), null);
    paramContext.setMinimumWidth(1000);
    setContentView(paramContext);
    g = ((ViewGroup)findViewById(2131624997));
    i = ((ViewGroup)findViewById(2131624995));
    if (i != null)
    {
      i.setOnClickListener(new as(this));
      j = ((TextView)findViewById(2131624996));
    }
  }
  
  protected eb b()
  {
    return e;
  }
  
  public void b(boolean paramBoolean)
  {
    e.a(e.P());
    e.b(false);
  }
  
  protected void c()
  {
    if (e == null)
    {
      e = new at(this, f, null, null);
      e.i(com.estrongs.android.ui.theme.at.a(mContext).c(2131558661));
      e.a(11);
      e.a(new au(this));
      ((ViewGroup)g).addView(e.aE());
      e.a(k);
      e.j("gallery://local/buckets/");
    }
  }
  
  public void dismiss()
  {
    super.dismiss();
    if (e != null) {
      e.i_();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */