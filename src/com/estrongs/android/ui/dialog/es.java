package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.a.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.impl.adb.c;

public class es
{
  private cg a;
  private View b;
  private Context c;
  private EditText d = null;
  private EditText e = null;
  private EditText f = null;
  private boolean g = false;
  private String h;
  
  public es(Context paramContext)
  {
    c = paramContext;
    b();
    c();
  }
  
  public es(Context paramContext, String paramString1, String paramString2)
  {
    c = paramContext;
    b();
    a(paramString1, paramString2);
    c();
  }
  
  private void a(String paramString1, String paramString2)
  {
    h = paramString1;
    if ((paramString1 != null) && (paramString1 != null))
    {
      g = true;
      paramString1 = am.b(paramString1).split(":");
      d.setText(paramString1[0]);
      if (paramString1.length > 1) {
        e.setText(paramString1[1]);
      }
      if ((paramString2 != null) && (paramString2.length() > 0)) {
        f.setText(paramString2);
      }
      if (bd.b(ad.a(c).d(h)))
      {
        int i = c.getResources().getColor(2131230723);
        f.setTextColor(i);
        f.setEnabled(false);
        d.setTextColor(i);
        d.setEnabled(false);
      }
    }
  }
  
  private boolean a(String paramString)
  {
    if (am.bg(paramString)) {}
    while (!am.K(paramString)) {
      return false;
    }
    try
    {
      boolean bool = c.g(paramString);
      return bool;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return false;
  }
  
  private void b()
  {
    b = g.a(c).inflate(2130903198, null);
    d = ((EditText)b.findViewById(2131362498));
    e = ((EditText)b.findViewById(2131362500));
    f = ((EditText)b.findViewById(2131362502));
    d.requestFocus();
  }
  
  private void c()
  {
    a = new ct(c).a(b).b(2131427339, new eu(this)).c(2131427340, new et(this)).a(2131428723).b();
  }
  
  private void d()
  {
    String str = e();
    if (str == null)
    {
      ag.a(c, c.getResources().getString(2131427777), 1);
      return;
    }
    u.a(c, 2131427784, 2131427785);
    new Thread(new ev(this, str)).start();
  }
  
  private String e()
  {
    for (Object localObject = d.getText().toString().trim(); (((String)localObject).startsWith("/")) || (((String)localObject).startsWith("\\")); localObject = ((String)localObject).substring(1)) {}
    if (((String)localObject).length() == 0) {
      return null;
    }
    String str = "adb://" + (String)localObject;
    localObject = str;
    if (str.charAt(str.length() - 1) != '/') {
      localObject = str + "/";
    }
    return (String)localObject;
  }
  
  public void a()
  {
    a.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */