package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import com.estrongs.android.d.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.impl.u.b;
import java.net.MalformedURLException;
import jcifs.smb.SmbException;
import jcifs.smb.SmbFile;

public class fv
{
  gc a;
  private ci b;
  private View c;
  private Context d;
  private EditText e = null;
  private EditText f = null;
  private EditText g = null;
  private EditText h = null;
  private EditText i = null;
  private CheckBox j = null;
  private boolean k = false;
  private String l;
  private CompoundButton.OnCheckedChangeListener m = new fw(this);
  
  public fv(Context paramContext)
  {
    d = paramContext;
    c();
    d();
  }
  
  public fv(Context paramContext, String paramString1, String paramString2)
  {
    d = paramContext;
    c();
    a(paramString1, paramString2);
    d();
  }
  
  private void a(String paramString1, String paramString2)
  {
    l = paramString1;
    String str1;
    int n;
    if (paramString1 != null)
    {
      str1 = null;
      if (paramString1 != null)
      {
        k = true;
        if (ap.J(paramString1))
        {
          str1 = ap.F(paramString1);
          n = str1.length() - 1;
          if (str1.charAt(n) != '/') {
            break label237;
          }
          str1 = str1.substring(6, n);
        }
        String str2 = ap.bI(paramString1);
        if (str2 != null) {
          e.setText(str2);
        }
        f.setText(str1);
        str1 = ap.A(paramString1);
        paramString1 = ap.C(paramString1);
        if ((str1 == null) || (str1.length() <= 0)) {
          break label249;
        }
        g.setText(str1);
        j.setChecked(false);
      }
    }
    for (;;)
    {
      if ((paramString1 != null) && (paramString1.length() > 0)) {
        h.setText(paramString1);
      }
      if ((paramString2 != null) && (paramString2.length() > 0)) {
        i.setText(paramString2);
      }
      if (bk.b(ad.a(d).d(l)))
      {
        n = d.getResources().getColor(2131558594);
        i.setTextColor(n);
        i.setEnabled(false);
        f.setTextColor(n);
        f.setEnabled(false);
      }
      return;
      label237:
      str1 = str1.substring(6);
      break;
      label249:
      j.setChecked(true);
    }
  }
  
  private boolean a(String paramString)
  {
    boolean bool2 = true;
    boolean bool1;
    if (ap.br(paramString)) {
      bool1 = false;
    }
    for (;;)
    {
      return bool1;
      bool1 = bool2;
      if (ap.J(paramString)) {
        try
        {
          paramString = new SmbFile(b.a(paramString)).list();
          bool1 = bool2;
          if (paramString == null) {
            return false;
          }
        }
        catch (MalformedURLException paramString)
        {
          return false;
        }
        catch (SmbException paramString)
        {
          return false;
        }
        catch (RuntimeException paramString)
        {
          paramString.printStackTrace();
        }
      }
    }
    return true;
  }
  
  private void c()
  {
    c = k.a(d).inflate(2130903353, null);
    e = ((EditText)c.findViewById(2131625284));
    f = ((EditText)c.findViewById(2131625235));
    g = ((EditText)c.findViewById(2131625288));
    h = ((EditText)c.findViewById(2131624636));
    j = ((CheckBox)c.findViewById(2131625259));
    i = ((EditText)c.findViewById(2131625239));
    j.setOnCheckedChangeListener(m);
    j.setChecked(false);
    f.requestFocus();
  }
  
  private void d()
  {
    b = new cv(d).a(c).b(2131231270, new fy(this)).c(2131231265, new fx(this)).a(2131231837).b();
  }
  
  private void e()
  {
    if (!j.isChecked())
    {
      str = g.getText().toString().trim();
      if ((str == null) || (str.length() == 0))
      {
        ak.a(d, d.getResources().getString(2131232533), 1);
        return;
      }
    }
    String str = f();
    if (str == null)
    {
      ak.a(d, d.getResources().getString(2131231825), 1);
      return;
    }
    u.a(d, 2131230914, 2131230913);
    new Thread(new fz(this, str)).start();
  }
  
  private String f()
  {
    for (Object localObject = f.getText().toString().trim(); (((String)localObject).startsWith("/")) || (((String)localObject).startsWith("\\")); localObject = ((String)localObject).substring(1)) {}
    if (((String)localObject).length() == 0) {
      return null;
    }
    String str2 = e.getText().toString().trim();
    String str1;
    if (str2 != null)
    {
      str1 = str2;
      if (str2.length() != 0) {}
    }
    else
    {
      str1 = null;
    }
    str2 = "smb://" + (String)localObject;
    if (ap.br(str2)) {
      return str2;
    }
    localObject = str2;
    if (str2.charAt(str2.length() - 1) != '/') {
      localObject = str2 + "/";
    }
    localObject = new StringBuffer((String)localObject);
    String str3;
    if (!j.isChecked())
    {
      str2 = g.getText().toString().trim();
      str3 = h.getText().toString();
      if ((str2 == null) || (str2.length() == 0))
      {
        ak.a(d, d.getResources().getString(2131232533), 1);
        return null;
      }
      if (str1 != null) {
        break label280;
      }
      ((StringBuffer)localObject).insert(6, ap.bz(str2) + ":" + ap.bz(str3) + "@");
    }
    for (;;)
    {
      return ((StringBuffer)localObject).toString();
      label280:
      ((StringBuffer)localObject).insert(6, ap.bz(str1) + ";" + ap.bz(str2) + ":" + ap.bz(str3) + "@");
    }
  }
  
  public boolean a()
  {
    return (b != null) && (b.isShowing());
  }
  
  public void b()
  {
    b.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */