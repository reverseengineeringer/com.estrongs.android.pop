package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TableRow;
import com.estrongs.android.pop.esclasses.g;

public class dn
  extends cg
{
  private EditText a;
  private CheckBox b;
  private CheckBox c;
  private EditText d;
  private boolean e;
  
  public dn(Context paramContext, boolean paramBoolean)
  {
    super(paramContext);
    e = paramBoolean;
    View localView = g.a(paramContext).inflate(2130903117, null);
    a = ((EditText)localView.findViewById(2131361868));
    Object localObject = (TableRow)localView.findViewById(2131362194);
    if (paramBoolean) {
      d = ((EditText)localView.findViewById(2131362196));
    }
    TableRow localTableRow1 = (TableRow)localView.findViewById(2131362200);
    b = ((CheckBox)localView.findViewById(2131362201));
    TableRow localTableRow2 = (TableRow)localView.findViewById(2131362202);
    c = ((CheckBox)localView.findViewById(2131362203));
    if (paramBoolean)
    {
      ((TableRow)localObject).setVisibility(0);
      localTableRow1.setVisibility(0);
      localTableRow2.setVisibility(8);
    }
    for (;;)
    {
      int i = a.getInputType();
      localObject = (CheckBox)localView.findViewById(2131361869);
      ((CheckBox)localObject).setVisibility(0);
      ((CheckBox)localObject).setOnCheckedChangeListener(new do(this, i));
      a.setHint("");
      setContentView(localView);
      setButton(-1, mContext.getResources().getString(2131427339), new dp(this));
      setButton(-2, mContext.getResources().getString(2131427340), new dq(this));
      setOnCancelListener(new dr(this));
      button_ok.setTextColor(paramContext.getResources().getColorStateList(2131230785));
      button_ok.setEnabled(false);
      a.addTextChangedListener(new ds(this));
      if (paramBoolean) {
        d.addTextChangedListener(new dt(this));
      }
      setTitle(2131427896);
      requestInputMethod();
      return;
      ((TableRow)localObject).setVisibility(8);
      localTableRow1.setVisibility(8);
      localTableRow2.setVisibility(0);
      localView.findViewById(2131362197).setVisibility(8);
    }
  }
  
  protected void a() {}
  
  protected void b() {}
  
  public String c()
  {
    return a.getText().toString();
  }
  
  public String d()
  {
    return d.getText().toString();
  }
  
  public boolean e()
  {
    return b.isChecked();
  }
  
  public boolean f()
  {
    return c.isChecked();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */