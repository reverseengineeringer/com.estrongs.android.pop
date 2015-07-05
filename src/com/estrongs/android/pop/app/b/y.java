package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.TableLayout;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.am;
import java.io.File;

public class y
{
  private Context a;
  private cg b;
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
    d = ((TableLayout)g.a(a).inflate(2130903243, null));
    b = new ct(a).a(2131427360).a(d).b(2131427339, new aa(this)).c(2131427340, new z(this)).b();
    c();
    d();
  }
  
  private void c()
  {
    c = e().getStringExtra("CURRENT_WORKING_PATH");
    try
    {
      if (am.ba(c))
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
    e = ((Button)d.findViewById(2131362705));
    f = ((Button)d.findViewById(2131362709));
    e.setText(a.getResources().getStringArray(2131165191)[0]);
    f.setText(a.getResources().getStringArray(2131165192)[0]);
    new ab(this, e, 2131165191, 2131427599);
    new ac(this, f, 2131165192, 2131427600);
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
 * Qualified Name:     com.estrongs.android.pop.app.b.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */