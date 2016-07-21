package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.theme.at;
import java.io.File;
import java.util.List;

public class a
{
  private Context a;
  private ci b;
  private at c;
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
  private bb q;
  private boolean r = false;
  
  public a(Context paramContext, boolean paramBoolean, String paramString1, String paramString2, List<String> paramList, j paramj)
  {
    a = paramContext;
    c = at.a(a);
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
    Object localObject = com.estrongs.android.pop.esclasses.k.a(a).inflate(2130903111, null);
    b = new cv(a).a(2131231339).a((View)localObject).b(2131231270, new c(this, (View)localObject)).c(2131231265, new b(this)).b();
    j = new d(this, (View)localObject);
    d = new File(m);
    RadioButton localRadioButton = (RadioButton)((View)localObject).findViewById(2131624371);
    String str = a(a(d.getName()));
    localRadioButton.setText(com.estrongs.fs.util.j.a(str) + "/");
    localRadioButton.setOnClickListener(j);
    ((RadioButton)((View)localObject).findViewById(2131624372)).setOnClickListener(j);
    ((RadioButton)((View)localObject).findViewById(2131624373)).setOnClickListener(j);
    ((RadioGroup)((View)localObject).findViewById(2131624370)).setOnClickListener(j);
    e = ((EditText)((View)localObject).findViewById(2131624355));
    e.setText("/sdcard/");
    e.setVisibility(8);
    e.setOnClickListener(new f(this));
    if (i == null) {
      i = com.estrongs.android.util.e.a[0];
    }
    localObject = (Button)((View)localObject).findViewById(2131624376);
    ((Button)localObject).setOnClickListener(j);
    ((Button)localObject).setText(com.estrongs.android.util.b.a(a, com.estrongs.android.util.b.a(i)));
    g = 2;
    h = (d.getAbsoluteFile().getParentFile().getPath() + "/" + com.estrongs.fs.util.j.a(str));
  }
  
  public void a()
  {
    b.show();
  }
  
  public void a(bb parambb)
  {
    q = parambb;
  }
  
  public void a(boolean paramBoolean)
  {
    r = paramBoolean;
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