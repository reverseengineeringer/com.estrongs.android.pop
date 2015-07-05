package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.pop.ad;

public class d
  extends v
{
  private View d;
  private Context e;
  private Button f;
  private Button g;
  private Button h;
  private boolean i = false;
  private ad j;
  private v k;
  
  public d(Context paramContext, v paramv)
  {
    super(paramContext);
    k = paramv;
    e = paramContext;
    j = ad.a(e);
    g();
  }
  
  private void f()
  {
    k.cancel();
    dismiss();
    if ((i) && (b != null)) {
      b.a(false, null, null);
    }
  }
  
  private void g()
  {
    d = com.estrongs.android.pop.esclasses.g.a(e).inflate(2130903209, null);
    setContentView(d);
    f = ((Button)d.findViewById(2131362590));
    f.setOnClickListener(new e(this));
    g = ((Button)d.findViewById(2131362591));
    g.setOnClickListener(new f(this));
    setTitle(2131428688);
    setCancelButton(getString(2131427363), new g(this));
    setConfirmButton(getString(2131427611), new h(this));
    h = ((Button)d.findViewById(2131362592));
    h.setOnClickListener(new i(this));
  }
  
  public void a()
  {
    i = false;
    setTitle(2131428697);
    ((TextView)d.findViewById(2131362589)).setText(2131428648);
    h.setVisibility(8);
  }
  
  public void b()
  {
    i = true;
    if ((j.c()) || (j.e()) || (j.a(0L) != null))
    {
      ((TextView)d.findViewById(2131362589)).setText(2131428690);
      if ((!k.e()) || (r.a().e() != null)) {
        h.setVisibility(8);
      }
      if ((j.c()) || (j.e()))
      {
        h.setText(2131428201);
        return;
      }
      h.setText(2131428691);
      return;
    }
    ((TextView)d.findViewById(2131362589)).setText(2131428689);
    h.setVisibility(0);
  }
  
  public void onBackPressed()
  {
    f();
    super.onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */