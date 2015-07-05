package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import com.estrongs.android.a.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.impl.p.b;
import java.net.MalformedURLException;
import jcifs.smb.SmbException;
import jcifs.smb.SmbFile;

public class fs
{
  fz a;
  private cg b;
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
  private CompoundButton.OnCheckedChangeListener m = new ft(this);
  
  public fs(Context paramContext)
  {
    d = paramContext;
    c();
    d();
  }
  
  public fs(Context paramContext, String paramString1, String paramString2)
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
        if (am.H(paramString1))
        {
          str1 = am.D(paramString1);
          n = str1.length() - 1;
          if (str1.charAt(n) != '/') {
            break label237;
          }
          str1 = str1.substring(6, n);
        }
        String str2 = am.br(paramString1);
        if (str2 != null) {
          e.setText(str2);
        }
        f.setText(str1);
        str1 = am.y(paramString1);
        paramString1 = am.A(paramString1);
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
      if (bd.b(ad.a(d).d(l)))
      {
        n = d.getResources().getColor(2131230723);
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
    if (am.bg(paramString)) {
      bool1 = false;
    }
    for (;;)
    {
      return bool1;
      bool1 = bool2;
      if (am.H(paramString)) {
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
    c = g.a(d).inflate(2130903202, null);
    e = ((EditText)c.findViewById(2131362547));
    f = ((EditText)c.findViewById(2131362498));
    g = ((EditText)c.findViewById(2131362551));
    h = ((EditText)c.findViewById(2131362072));
    j = ((CheckBox)c.findViewById(2131362522));
    i = ((EditText)c.findViewById(2131362502));
    j.setOnCheckedChangeListener(m);
    j.setChecked(false);
    f.requestFocus();
  }
  
  private void d()
  {
    b = new ct(d).a(c).b(2131427339, new fv(this)).c(2131427340, new fu(this)).a(2131428023).b();
  }
  
  private void e()
  {
    if (!j.isChecked())
    {
      str = g.getText().toString().trim();
      if ((str == null) || (str.length() == 0))
      {
        ag.a(d, d.getResources().getString(2131427773), 1);
        return;
      }
    }
    String str = f();
    if (str == null)
    {
      ag.a(d, d.getResources().getString(2131427777), 1);
      return;
    }
    u.a(d, 2131427784, 2131427785);
    new Thread(new fw(this, str)).start();
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
    if (am.bg(str2)) {
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
        ag.a(d, d.getResources().getString(2131427773), 1);
        return null;
      }
      if (str1 != null) {
        break label280;
      }
      ((StringBuffer)localObject).insert(6, am.bi(str2) + ":" + am.bi(str3) + "@");
    }
    for (;;)
    {
      return ((StringBuffer)localObject).toString();
      label280:
      ((StringBuffer)localObject).insert(6, am.bi(str1) + ";" + am.bi(str2) + ":" + am.bi(str3) + "@");
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
 * Qualified Name:     com.estrongs.android.ui.dialog.fs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */