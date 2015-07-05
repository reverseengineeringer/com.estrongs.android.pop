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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;

public class h
{
  private Context a;
  private c b;
  private cg c;
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
    View localView = g.a(a).inflate(2130903106, null);
    e = localView.findViewById(2131362117);
    e.setVisibility(8);
    d = ((TextView)localView.findViewById(2131361822));
    ImageView localImageView = (ImageView)localView.findViewById(2131361853);
    Bitmap localBitmap = b.a(a);
    if (localBitmap != null) {
      localImageView.setImageBitmap(localBitmap);
    }
    for (;;)
    {
      ((TextView)localView.findViewById(2131361825)).setText(b.a());
      ((TextView)localView.findViewById(2131362091)).setText(b.d());
      h = ((Button)localView.findViewById(2131362116));
      h.setOnClickListener(new j(this));
      f = ((TextView)localView.findViewById(2131361950));
      g = ((TextView)localView.findViewById(2131362118));
      i = ((ProgressBar)localView.findViewById(2131361935));
      j = ((CheckBox)localView.findViewById(2131361954));
      if (b.g()) {
        j.setVisibility(8);
      }
      c = new ct(a).a(2131427694).a(localView).a(new l(this)).a(2131427340, new k(this)).b();
      return;
      localImageView.setImageResource(2130837647);
    }
  }
  
  private void d()
  {
    b.a(a, k);
    e.setVisibility(0);
    i.setProgress(0);
    h.setText(2131427358);
    l = true;
  }
  
  private void e()
  {
    b.h();
    e.setVisibility(8);
    h.setText(2131427359);
    l = false;
  }
  
  public void a()
  {
    c.show();
  }
  
  public void a(String paramString)
  {
    if (d != null) {
      d.setText(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    CheckBox localCheckBox = j;
    if (paramBoolean) {}
    for (int m = 0;; m = 8)
    {
      localCheckBox.setVisibility(m);
      return;
    }
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