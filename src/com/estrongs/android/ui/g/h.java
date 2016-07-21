package com.estrongs.android.ui.g;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

public class h
{
  private Context a;
  private c b;
  private ci c;
  private TextView d;
  private View e;
  private TextView f;
  private TextView g;
  private Button h;
  private ProgressBar i;
  private CheckBox j;
  private Handler k;
  private boolean l = false;
  
  public h(Context paramContext, c paramc)
  {
    a = paramContext;
    b = paramc;
    k = new i(this);
    c();
  }
  
  private void c()
  {
    View localView = com.estrongs.android.pop.esclasses.k.a(a).inflate(2130903194, null);
    e = localView.findViewById(2131624681);
    e.setVisibility(8);
    d = ((TextView)localView.findViewById(2131624200));
    ImageView localImageView = (ImageView)localView.findViewById(2131624054);
    Bitmap localBitmap = b.a(a);
    if (localBitmap != null) {
      localImageView.setImageBitmap(localBitmap);
    }
    for (;;)
    {
      ((TextView)localView.findViewById(2131624055)).setText(b.a());
      ((TextView)localView.findViewById(2131624656)).setText(b.d());
      h = ((Button)localView.findViewById(2131624680));
      h.setOnClickListener(new j(this));
      f = ((TextView)localView.findViewById(2131624457));
      g = ((TextView)localView.findViewById(2131624682));
      i = ((ProgressBar)localView.findViewById(2131624429));
      j = ((CheckBox)localView.findViewById(2131624070));
      if (b.g()) {
        j.setVisibility(8);
      }
      c = new cv(a).a(2131232202).a(localView).a(new l(this)).a(2131231265, new k(this)).b();
      return;
      localImageView.setImageResource(2130837895);
    }
  }
  
  private void d()
  {
    b.a(a, k);
    e.setVisibility(0);
    i.setProgress(0);
    h.setText(2131230897);
    l = true;
  }
  
  private void e()
  {
    b.h();
    e.setVisibility(8);
    h.setText(2131230847);
    l = false;
  }
  
  public void a()
  {
    c.show();
  }
  
  public void b()
  {
    c.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.g.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */