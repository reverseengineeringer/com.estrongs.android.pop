package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import com.estrongs.android.view.ea;

class gd
  extends ea
{
  Button a;
  gh b;
  private int d = 1;
  private View.OnClickListener e = new gf(this);
  
  public gd(ga paramga, Activity paramActivity)
  {
    super(paramActivity);
    a(paramActivity);
  }
  
  protected int a()
  {
    return 2130903204;
  }
  
  public void a(Activity paramActivity)
  {
    b = new gh(ad, d, new ge(this));
    a = ((Button)k(2131362557));
    a.setText(b.b(d));
    a.setOnClickListener(e);
  }
  
  protected String b()
  {
    return ((EditText)k(2131362558)).getText().toString();
  }
  
  protected int c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */