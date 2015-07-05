package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.estrongs.android.pop.esclasses.g;

public class dj
{
  private cg a;
  private Context b;
  private dm c;
  private EditText d;
  private CheckBox e;
  
  private dj(Context paramContext)
  {
    b = paramContext;
    b();
  }
  
  public dj(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, paramString1, paramString2, true);
  }
  
  public dj(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    this(paramContext);
    b(paramString1);
    a(paramString2);
    paramContext = e;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      paramContext.setVisibility(i);
      return;
    }
  }
  
  private void b()
  {
    LinearLayout localLinearLayout = (LinearLayout)g.a(b).inflate(2130903103, null);
    d = ((EditText)localLinearLayout.findViewById(2131362094));
    a = new ct(b).a(localLinearLayout).b(2131427339, new dl(this)).c(2131427340, new dk(this)).b();
    e = ((CheckBox)localLinearLayout.findViewById(2131362095));
  }
  
  public void a()
  {
    a.show();
  }
  
  public void a(dm paramdm)
  {
    c = paramdm;
  }
  
  public void a(String paramString)
  {
    if (d != null)
    {
      d.setText(paramString);
      d.selectAll();
    }
  }
  
  public void b(String paramString)
  {
    a.setTitle(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */