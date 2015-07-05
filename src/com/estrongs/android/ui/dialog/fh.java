package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.a.u;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import org.json.simple.JSONObject;

public class fh
{
  private cg a;
  private View b;
  private Context c;
  private CheckBox d = null;
  private String e = null;
  private Handler f = new Handler();
  private String g;
  private boolean h = false;
  private String i = null;
  private int j = 0;
  private String[] k = { "s3.amazonaws.com", "s3-us-west-2.amazonaws.com", "s3-us-west-1.amazonaws.com", "s3-eu-west-1.amazonaws.com", "s3-ap-southeast-1.amazonaws.com", "s3-ap-northeast-1.amazonaws.com", "s3-sa-east-1.amazonaws.com", "s3-ap-southeast-2.amazonaws.com" };
  private String[] l = { "US Standard", "US (Oregon)", "US (Northern California)", "EU (Ireland)", "Asia (Singapore)", "Asia (Tokyo)", "Sao Paulo", "Sydney" };
  private CheckBox m = null;
  private Button n;
  
  public fh(Context paramContext)
  {
    c = paramContext;
    b();
    c();
  }
  
  private boolean a(String paramString1, String paramString2, String paramString3)
  {
    if (am.bg(paramString1)) {
      return false;
    }
    if (am.aw(paramString1))
    {
      try
      {
        if ("s3".equals(e))
        {
          localObject = new JSONObject();
          ((JSONObject)localObject).put("key", paramString2);
          ((JSONObject)localObject).put("secret", paramString3);
          ((JSONObject)localObject).put("host", k[j]);
          if (d.isChecked())
          {
            ((JSONObject)localObject).put("http", "https://");
            com.estrongs.fs.impl.j.b.a("s3", "s3fakeuser", "fake", localObject);
          }
        }
        while (!"yandex".equals(e)) {
          for (;;)
          {
            return com.estrongs.fs.impl.j.b.b(paramString1);
            ((JSONObject)localObject).put("http", "http://");
          }
        }
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        return false;
      }
      paramString3 = am.b(paramString2, paramString3, am.ag(paramString1));
      String str = am.a(paramString3);
      Object localObject = am.w(paramString3);
      boolean bool = paramString3.startsWith("webdavs://");
      paramString3 = (String)localObject;
      if (localObject == null) {
        if (!bool) {
          break label196;
        }
      }
      label196:
      for (paramString3 = "443";; paramString3 = "80")
      {
        com.estrongs.fs.impl.r.b.a(paramString2, str, paramString3);
        break;
      }
    }
    return false;
  }
  
  private void b()
  {
    b = g.a(c).inflate(2130903272, null);
    d = ((CheckBox)b.findViewById(2131362801));
    n = ((Button)b.findViewById(2131362803));
    n.setText(l[0]);
    fi localfi = new fi(this);
    n.setOnClickListener(new fj(this, localfi));
  }
  
  private String c(String paramString)
  {
    String str = paramString;
    if (paramString != null) {
      str = paramString.replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("'", "&apos;").replaceAll("\"", "&quot;");
    }
    return str;
  }
  
  private String c(String paramString1, String paramString2)
  {
    if (e.equals("vdisk")) {
      if (d.isChecked()) {
        paramString1 = "s_" + paramString1;
      }
    }
    while (!"s3".equals(e)) {
      for (;;)
      {
        return am.a(e, paramString1, paramString2, "/");
        paramString1 = "l_" + paramString1;
      }
    }
    return am.a(e, "s3fakeuser", "fake", "/");
  }
  
  private void c()
  {
    a = new ct(c).a(b).b(2131427339, new fm(this)).c(2131427340, new fl(this)).b();
  }
  
  private void d()
  {
    boolean bool = "s3".equals(e);
    String str4 = ((EditText)b.findViewById(2131362798)).getText().toString();
    String str3 = ((EditText)b.findViewById(2131362799)).getText().toString();
    String str5 = ((EditText)b.findViewById(2131362804)).getText().toString();
    if ((str4 == null) || (str3 == null) || (str4.length() == 0) || (str3.length() == 0))
    {
      ag.a(c, c.getText(2131427902), 1);
      return;
    }
    if ((!"s3".equals(e)) && (!"yandex".equals(e)) && (!"vdisk".equals(e)) && (!d(str4)))
    {
      ag.a(c, c.getText(2131427905), 1);
      return;
    }
    if (("kanbox".equals(e)) && ((str3.length() < 6) || (str3.length() > 34)))
    {
      ag.a(c, c.getText(2131427953), 1);
      return;
    }
    String str2 = str4;
    String str1 = str3;
    if ("sugarsync".equals(e))
    {
      str2 = c(str4);
      str1 = c(str3);
    }
    str3 = c(str2, str1);
    u.a(c, 2131427784, 2131427785);
    new Thread(new fn(this, str3, str2, str1, bool, str5)).start();
  }
  
  private boolean d(String paramString)
  {
    paramString = paramString.split("@");
    if (paramString.length != 2) {}
    do
    {
      return false;
      paramString = paramString[1].split("\\.");
    } while ((paramString.length < 2) || (!paramString[(paramString.length - 1)].matches("[a-zA-z]+")));
    return true;
  }
  
  public void a()
  {
    a.show();
  }
  
  public void a(String paramString)
  {
    h = true;
    i = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (paramString1 != null) {
      ((EditText)b.findViewById(2131362798)).setText(paramString1);
    }
    if (paramString2 != null) {
      ((EditText)b.findViewById(2131362804)).setText(paramString2);
    }
  }
  
  public fh b(String paramString)
  {
    a.setTitle(paramString);
    return this;
  }
  
  public fh b(String paramString1, String paramString2)
  {
    g = paramString1;
    e = paramString2;
    b(paramString1);
    if (paramString2.equals("vdisk"))
    {
      paramString1 = b.findViewById(2131362800);
      if (paramString1 != null) {
        paramString1.setVisibility(0);
      }
    }
    do
    {
      do
      {
        return this;
      } while (!paramString2.equals("s3"));
      paramString1 = b.findViewById(2131362800);
      if (paramString1 != null) {
        paramString1.setVisibility(0);
      }
      d.setText(2131427824);
      paramString1 = b.findViewById(2131362802);
    } while (paramString1 == null);
    paramString1.setVisibility(0);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */