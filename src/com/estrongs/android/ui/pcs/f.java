package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.pop.ad;

public class f
  extends y
{
  private View d;
  private Context e;
  private Button f;
  private Button g;
  private Button h;
  private boolean i = false;
  private ad j;
  private y k;
  
  public f(Context paramContext, y paramy)
  {
    super(paramContext);
    k = paramy;
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
    d = com.estrongs.android.pop.esclasses.k.a(e).inflate(2130903370, null);
    setContentView(d);
    f = ((Button)d.findViewById(2131625341));
    f.setOnClickListener(new g(this));
    g = ((Button)d.findViewById(2131625342));
    g.setOnClickListener(new h(this));
    setTitle(2131231452);
    setCancelButton(getString(2131230851), new i(this));
    setConfirmButton(getString(2131232244), new j(this));
    h = ((Button)d.findViewById(2131625343));
    h.setOnClickListener(new k(this));
  }
  
  public void a()
  {
    i = false;
    setTitle(2131231456);
    ((TextView)d.findViewById(2131625340)).setText(2131231983);
    h.setVisibility(8);
  }
  
  public void b()
  {
    i = true;
    if ((j.d()) || (j.f()) || (j.a(0L) != null))
    {
      ((TextView)d.findViewById(2131625340)).setText(2131231454);
      if ((!k.e()) || (u.a().e() != null)) {
        h.setVisibility(8);
      }
      if ((j.d()) || (j.f()))
      {
        h.setText(2131230863);
        return;
      }
      h.setText(2131231455);
      return;
    }
    ((TextView)d.findViewById(2131625340)).setText(2131231453);
    h.setVisibility(0);
  }
  
  public void onBackPressed()
  {
    f();
    super.onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */