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
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.io.a.a.b;
import com.estrongs.io.archive.e;
import com.estrongs.io.archive.j;
import java.io.File;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class aj
{
  private Button A;
  private String[] B;
  private int C = 2;
  private aw D = null;
  boolean a = false;
  j b;
  private ci c;
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
  private e n = null;
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
  
  public aj(Context paramContext, String paramString, ArrayList<String> paramArrayList)
  {
    d = paramContext;
    e = paramString;
    f = paramArrayList;
    if ((paramArrayList == null) || (paramArrayList.size() < 1))
    {
      com.estrongs.android.ui.view.ak.a(d, d.getText(2131231551), 0);
      return;
    }
    c();
  }
  
  private View a(int paramInt)
  {
    return g.findViewById(paramInt);
  }
  
  private Map<String, String> a(String paramString)
  {
    HashMap localHashMap = new HashMap(2);
    if ("zip".equalsIgnoreCase(j))
    {
      if (A.getText().equals(B[0])) {
        localHashMap.put("compress_level", String.valueOf(0));
      }
      if (A.getText().equals(B[1])) {
        localHashMap.put("compress_level", String.valueOf(1));
      }
      if (A.getText().equals(B[2])) {
        localHashMap.put("compress_level", String.valueOf(-1));
      }
      if (A.getText().equals(B[3])) {
        localHashMap.put("compress_level", String.valueOf(9));
      }
      if (paramString.length() > 0) {
        localHashMap.put("password", paramString);
      }
    }
    return localHashMap;
  }
  
  private void c()
  {
    g = k.a(d).inflate(2130903110, null);
    c = new cv(d).a(2131230726).a(g).b(2131231270, new an(this)).c(2131231265, new am(this)).a(new ak(this)).b();
    h = ((EditText)a(2131624355));
    k = ((RadioGroup)a(2131624356));
    k.setOnCheckedChangeListener(new ap(this));
    m = a(2131624354);
    l = a(2131624369);
    RadioButton localRadioButton = (RadioButton)a(2131624359);
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
    y = a(2131624364);
    w = ((EditText)a(2131624366));
    w.setHint("");
    int i1 = w.getInputType();
    CheckBox localCheckBox = (CheckBox)a(2131624367);
    localCheckBox.setVisibility(0);
    localCheckBox.setOnCheckedChangeListener(new aq(this, i1));
    x = ((CheckBox)a(2131624368));
    z = a(2131624360);
    A = ((Button)a(2131624363));
    B = d.getResources().getStringArray(2131492887);
    A.setText(B[C]);
    A.setOnClickListener(new ar(this));
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
    t = ((TextView)a(2131624380));
    u = ((TextView)a(2131624381));
    p = ((TextView)a(2131624383));
    o = ((ProgressBar)a(2131624387));
    s = ((TextView)a(2131624386));
    q = ((TextView)a(2131624384));
    r = ((TextView)a(2131624385));
    c.setSingleButton(d.getString(2131231265), new av(this));
    n = new e(d, null, d.getString(2131231757));
    n.f(t);
    n.g(u);
    n.e(p);
    n.a(o);
    n.b(s);
    n.h(q);
    n.i(r);
    v = new b(n);
  }
  
  private void g()
  {
    if (D != null)
    {
      ai localai = new ai();
      a = h();
      c = f;
      d = j;
      b = w.getText().toString();
      e = a(w.getText().toString());
      D.a(localai);
      a();
      return;
    }
    m.setVisibility(8);
    l.setVisibility(0);
    ((TextView)a(2131624200)).setText(d.getString(2131232402, new Object[] { i() }));
    c.setTitle(MessageFormat.format(d.getString(2131231745), new Object[] { i, j }));
    if (!a) {
      f();
    }
    new al(this, "ArchiveCompress").start();
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
  
  public void a(aw paramaw)
  {
    D = paramaw;
  }
  
  public void b()
  {
    c.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */