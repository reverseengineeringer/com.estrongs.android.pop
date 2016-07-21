package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.estrongs.android.pop.esclasses.k;

public class dl
{
  private ci a;
  private Context b;
  private do c;
  private EditText d;
  private CheckBox e;
  
  private dl(Context paramContext)
  {
    b = paramContext;
    b();
  }
  
  public dl(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, paramString1, paramString2, true);
  }
  
  public dl(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
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
    LinearLayout localLinearLayout = (LinearLayout)k.a(b).inflate(2130903191, null);
    d = ((EditText)localLinearLayout.findViewById(2131624658));
    a = new cv(b).a(localLinearLayout).b(2131231270, new dn(this)).c(2131231265, new dm(this)).b();
    e = ((CheckBox)localLinearLayout.findViewById(2131624659));
  }
  
  public void a()
  {
    a.show();
  }
  
  public void a(do paramdo)
  {
    c = paramdo;
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
 * Qualified Name:     com.estrongs.android.ui.dialog.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */