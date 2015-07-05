package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import com.estrongs.io.a.a.b;
import com.estrongs.io.archive.d;
import com.estrongs.io.archive.i;
import java.io.File;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;

public class ai
{
  private Button A;
  private String[] B;
  private int C = 2;
  boolean a = false;
  i b;
  private cg c;
  private Context d;
  private String e;
  private List<String> f;
  private View g;
  private EditText h = null;
  private String i;
  private String j;
  private RadioGroup k;
  private View l;
  private View m;
  private d n = null;
  private ProgressBar o = null;
  private TextView p;
  private TextView q;
  private TextView r;
  private TextView s;
  private TextView t;
  private TextView u;
  private b v;
  private EditText w = null;
  private CheckBox x = null;
  private View y;
  private View z;
  
  public ai(Context paramContext, String paramString, ArrayList<String> paramArrayList)
  {
    d = paramContext;
    e = paramString;
    f = paramArrayList;
    if ((paramArrayList == null) || (paramArrayList.size() < 1))
    {
      ag.a(d, d.getText(2131427774), 0);
      return;
    }
    c();
  }
  
  private View a(int paramInt)
  {
    return g.findViewById(paramInt);
  }
  
  private void c()
  {
    g = g.a(d).inflate(2130903048, null);
    c = new ct(d).a(2131427493).a(g).b(2131427339, new am(this)).c(2131427340, new al(this)).a(new aj(this)).b();
    h = ((EditText)a(2131361857));
    k = ((RadioGroup)a(2131361858));
    k.setOnCheckedChangeListener(new ao(this));
    m = a(2131361856);
    l = a(2131361871);
    RadioButton localRadioButton = (RadioButton)a(2131361861);
    if (f.size() > 1) {
      localRadioButton.setVisibility(8);
    }
    for (;;)
    {
      d();
      e();
      return;
      File localFile = new File((String)f.get(0));
      if ((localFile == null) || (!localFile.exists())) {
        a();
      } else if (localFile.isDirectory()) {
        localRadioButton.setVisibility(8);
      } else {
        localRadioButton.setVisibility(0);
      }
    }
  }
  
  private void d()
  {
    y = a(2131361866);
    w = ((EditText)a(2131361868));
    w.setHint("");
    int i1 = w.getInputType();
    CheckBox localCheckBox = (CheckBox)a(2131361869);
    localCheckBox.setVisibility(0);
    localCheckBox.setOnCheckedChangeListener(new ap(this, i1));
    x = ((CheckBox)a(2131361870));
    z = a(2131361862);
    A = ((Button)a(2131361865));
    B = d.getResources().getStringArray(2131165193);
    A.setText(B[C]);
    A.setOnClickListener(new aq(this));
  }
  
  private void e()
  {
    if (f.size() > 1) {}
    for (String str1 = new File(e).getName();; str1 = new File((String)f.get(0)).getName())
    {
      String str2;
      if (str1 != null)
      {
        str2 = str1;
        if (str1.length() >= 1) {}
      }
      else
      {
        str2 = "allfiles";
      }
      h.setText(str2);
      h.setSelection(0, str2.length());
      return;
    }
  }
  
  private void f()
  {
    a = true;
    t = ((TextView)a(2131361882));
    u = ((TextView)a(2131361883));
    p = ((TextView)a(2131361885));
    o = ((ProgressBar)a(2131361889));
    s = ((TextView)a(2131361888));
    q = ((TextView)a(2131361886));
    r = ((TextView)a(2131361887));
    c.setSingleButton(d.getString(2131427340), new au(this));
    n = new d(d, null, d.getString(2131427856));
    n.b(t);
    n.c(u);
    n.a(p);
    n.a(o);
    n.d(s);
    n.e(q);
    n.f(r);
    v = new b(n);
  }
  
  private void g()
  {
    m.setVisibility(8);
    l.setVisibility(0);
    ((TextView)a(2131361822)).setText(d.getString(2131428119, new Object[] { i() }));
    c.setTitle(MessageFormat.format(d.getString(2131427855), new Object[] { i, j }));
    if (!a) {
      f();
    }
    new ak(this, "ArchiveCompress").start();
  }
  
  private String h()
  {
    String str2 = e;
    String str1 = str2;
    if (!str2.endsWith("/")) {
      str1 = str2 + "/";
    }
    str2 = str1 + i();
    str1 = str2;
    if (str2.contains("..")) {}
    try
    {
      str1 = new File(str2).getCanonicalPath();
      return str1;
    }
    catch (IOException localIOException) {}
    return str2;
  }
  
  private String i()
  {
    String str2 = i;
    String str1;
    if (str2 != null)
    {
      str1 = str2;
      if (str2.trim().length() >= 1) {}
    }
    else
    {
      str1 = "auto_name";
    }
    return str1 + "." + j;
  }
  
  public void a()
  {
    c.dismiss();
  }
  
  public void b()
  {
    c.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */