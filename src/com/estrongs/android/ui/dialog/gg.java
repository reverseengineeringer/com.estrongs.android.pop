package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import com.estrongs.android.view.gf;

class gg
  extends gf
{
  Button a;
  gk b;
  private int d = 1;
  private View.OnClickListener e = new gi(this);
  
  public gg(gd paramgd, Activity paramActivity)
  {
    super(paramActivity);
    a(paramActivity);
  }
  
  protected int a()
  {
    return 2130903355;
  }
  
  public void a(Activity paramActivity)
  {
    b = new gk(ag, d, new gh(this));
    a = ((Button)b(2131625294));
    a.setText(b.b(d));
    a.setOnClickListener(e);
  }
  
  protected String b()
  {
    return ((EditText)b(2131625295)).getText().toString();
  }
  
  protected int c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */