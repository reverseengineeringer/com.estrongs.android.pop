package com.estrongs.android.pop.app.f;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.TableLayout;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.ap;
import java.io.File;

public class y
{
  private Context a;
  private ci b;
  private String c;
  private TableLayout d;
  private Button e = null;
  private Button f = null;
  private x g = new x();
  private x h = new x();
  private Intent i;
  private an j;
  
  public y(Context paramContext, Intent paramIntent)
  {
    a = paramContext;
    i = paramIntent;
    b();
  }
  
  private void b()
  {
    d = ((TableLayout)k.a(a).inflate(2130903414, null));
    b = new cv(a).a(2131230886).a(d).b(2131231270, new aa(this)).c(2131231265, new z(this)).b();
    c();
    d();
  }
  
  private void c()
  {
    c = e().getStringExtra("CURRENT_WORKING_PATH");
    try
    {
      if (ap.bl(c))
      {
        String str = new File(c).getCanonicalPath();
        if ((str != null) && (str.length() > 0) && (!c.equals(str))) {
          c = str;
        }
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private void d()
  {
    e = ((Button)d.findViewById(2131625479));
    f = ((Button)d.findViewById(2131625483));
    e.setText(a.getResources().getStringArray(2131492877)[0]);
    f.setText(a.getResources().getStringArray(2131492876)[0]);
    new ab(this, e, 2131492877, 2131232316);
    new ac(this, f, 2131492876, 2131232301);
  }
  
  private Intent e()
  {
    return i;
  }
  
  public y a(an paraman)
  {
    j = paraman;
    return this;
  }
  
  public void a()
  {
    b.show();
  }
  
  public void a(Intent paramIntent)
  {
    if ((paramIntent != null) && (j != null)) {
      j.a(paramIntent);
    }
    b.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */