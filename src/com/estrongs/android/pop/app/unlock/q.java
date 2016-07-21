package com.estrongs.android.pop.app.unlock;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.duapps.ad.b;
import com.duapps.ad.f;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;

public class q
  extends ci
{
  private a a;
  private LinearLayout b;
  private LinearLayout c;
  private Button d;
  private ImageView e;
  private TextView f;
  private TextView g;
  private TextView h;
  private LinearLayout i;
  
  public q(Context paramContext, a parama)
  {
    super(paramContext);
    a = parama;
    b();
  }
  
  private void b()
  {
    c();
    setCanceledOnTouchOutside(false);
  }
  
  private void c()
  {
    View localView = k.a(mContext).inflate(2130903454, null);
    setContentView(localView);
    setTitle(a.b);
    ImageView localImageView = (ImageView)localView.findViewById(2131625598);
    TextView localTextView = (TextView)localView.findViewById(2131625599);
    i = ((LinearLayout)localView.findViewById(2131625607));
    b = ((LinearLayout)localView.findViewById(2131625600));
    c = ((LinearLayout)localView.findViewById(2131625602));
    f = ((TextView)localView.findViewById(2131625601));
    e = ((ImageView)localView.findViewById(2131625603));
    g = ((TextView)localView.findViewById(2131625604));
    h = ((TextView)localView.findViewById(2131625605));
    d = ((Button)localView.findViewById(2131625606));
    com.estrongs.android.b.a.c.a(localImageView, a.c, 2130837751, null);
    localTextView.setText(a.d);
    f.setText(a.e);
  }
  
  public void a()
  {
    d.setText(getString(2131230835));
    d.setOnClickListener(new r(this));
  }
  
  public void a(b paramb)
  {
    i.setVisibility(8);
    b.setVisibility(0);
    c.setVisibility(8);
    switch (paramb.a())
    {
    default: 
      f.setText(getString(2131232504));
    }
    for (;;)
    {
      a();
      return;
      f.setText(getString(2131231626));
    }
  }
  
  public void a(com.duapps.ad.c paramc)
  {
    i.setVisibility(8);
    b.setVisibility(0);
    com.estrongs.android.b.a.c.a(e, paramc.c(), 2130837595, null);
    g.setText(paramc.a());
    h.setText(paramc.b());
    d.setText(paramc.e());
    paramc.a(b);
  }
  
  public void a(f paramf)
  {
    a(paramf.l());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */