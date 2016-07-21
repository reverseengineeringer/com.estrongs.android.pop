package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.d.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.impl.adb.c;

public class ev
{
  private ci a;
  private View b;
  private Context c;
  private EditText d = null;
  private EditText e = null;
  private EditText f = null;
  private boolean g = false;
  private String h;
  
  public ev(Context paramContext)
  {
    c = paramContext;
    b();
    c();
  }
  
  public ev(Context paramContext, String paramString1, String paramString2)
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
      paramString1 = ap.b(paramString1).split(":");
      d.setText(paramString1[0]);
      if (paramString1.length > 1) {
        e.setText(paramString1[1]);
      }
      if ((paramString2 != null) && (paramString2.length() > 0)) {
        f.setText(paramString2);
      }
      if (bk.b(ad.a(c).d(h)))
      {
        int i = c.getResources().getColor(2131558594);
        f.setTextColor(i);
        f.setEnabled(false);
        d.setTextColor(i);
        d.setEnabled(false);
      }
    }
  }
  
  private boolean a(String paramString)
  {
    if (ap.br(paramString)) {}
    while (!ap.M(paramString)) {
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
    b = k.a(c).inflate(2130903349, null);
    d = ((EditText)b.findViewById(2131625235));
    e = ((EditText)b.findViewById(2131625237));
    f = ((EditText)b.findViewById(2131625239));
    d.requestFocus();
  }
  
  private void c()
  {
    a = new cv(c).a(b).b(2131231270, new ex(this)).c(2131231265, new ew(this)).a(2131231835).b();
  }
  
  private void d()
  {
    String str = e();
    if (str == null)
    {
      ak.a(c, c.getResources().getString(2131231825), 1);
      return;
    }
    u.a(c, 2131230914, 2131230913);
    new Thread(new ey(this, str)).start();
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
 * Qualified Name:     com.estrongs.android.ui.dialog.ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */