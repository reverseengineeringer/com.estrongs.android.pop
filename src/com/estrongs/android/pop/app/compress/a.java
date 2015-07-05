package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.theme.al;
import java.io.File;
import java.util.List;

public class a
{
  private Context a;
  private cg b;
  private al c;
  private File d;
  private EditText e;
  private EditText f;
  private int g;
  private String h;
  private String i = null;
  private View.OnClickListener j;
  private j k;
  private boolean l;
  private String m;
  private List<String> n;
  private boolean o;
  private k p;
  
  public a(Context paramContext, boolean paramBoolean, String paramString1, String paramString2, List<String> paramList, j paramj)
  {
    a = paramContext;
    c = al.a(a);
    l = paramBoolean;
    m = paramString1;
    i = paramString2;
    n = paramList;
    k = paramj;
    o = false;
    c();
  }
  
  private String a(String paramString)
  {
    String str = paramString;
    if (paramString.matches(".*part[0-9]+\\.rar"))
    {
      int i1 = paramString.lastIndexOf("part");
      str = paramString;
      if (i1 > 0) {
        str = paramString.substring(0, i1);
      }
    }
    return str;
  }
  
  private void c()
  {
    Object localObject = g.a(a).inflate(2130903049, null);
    b = new ct(a).a(2131427862).a((View)localObject).b(2131427339, new c(this, (View)localObject)).c(2131427340, new b(this)).b();
    j = new d(this, (View)localObject);
    d = new File(m);
    RadioButton localRadioButton = (RadioButton)((View)localObject).findViewById(2131361873);
    String str = a(a(d.getName()));
    localRadioButton.setText(com.estrongs.fs.util.j.a(str) + "/");
    localRadioButton.setOnClickListener(j);
    ((RadioButton)((View)localObject).findViewById(2131361874)).setOnClickListener(j);
    ((RadioButton)((View)localObject).findViewById(2131361875)).setOnClickListener(j);
    ((RadioGroup)((View)localObject).findViewById(2131361872)).setOnClickListener(j);
    e = ((EditText)((View)localObject).findViewById(2131361857));
    e.setText("/sdcard/");
    e.setVisibility(8);
    e.setOnClickListener(new f(this));
    if (i == null) {
      i = com.estrongs.android.util.f.a[0];
    }
    localObject = (Button)((View)localObject).findViewById(2131361878);
    ((Button)localObject).setOnClickListener(j);
    ((Button)localObject).setText(com.estrongs.android.util.c.a(a, com.estrongs.android.util.c.a(i)));
    g = 2;
    h = (d.getAbsoluteFile().getParentFile().getPath() + "/" + com.estrongs.fs.util.j.a(str));
  }
  
  public void a()
  {
    b.show();
  }
  
  public void b()
  {
    if (o) {
      b.setOnDismissListener(new i(this));
    }
    b.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */