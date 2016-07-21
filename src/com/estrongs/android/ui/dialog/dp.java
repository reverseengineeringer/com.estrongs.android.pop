package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TableRow;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.esclasses.k;

public class dp
  extends ci
{
  private EditText a;
  private CheckBox b;
  private CheckBox c;
  private EditText d;
  private boolean e;
  private EditText f;
  private CheckBox g;
  
  public dp(Context paramContext, boolean paramBoolean)
  {
    super(paramContext);
    e = paramBoolean;
    View localView = k.a(paramContext).inflate(2130903213, null);
    a = ((EditText)localView.findViewById(2131624366));
    Object localObject = (TableRow)localView.findViewById(2131624780);
    if (paramBoolean) {
      d = ((EditText)localView.findViewById(2131624782));
    }
    TableRow localTableRow1 = (TableRow)localView.findViewById(2131624789);
    b = ((CheckBox)localView.findViewById(2131624790));
    TableRow localTableRow2 = (TableRow)localView.findViewById(2131624791);
    c = ((CheckBox)localView.findViewById(2131624792));
    TableRow localTableRow3 = (TableRow)localView.findViewById(2131624785);
    if (paramBoolean)
    {
      ((TableRow)localObject).setVisibility(0);
      localTableRow1.setVisibility(0);
      localTableRow2.setVisibility(8);
      localTableRow3.setVisibility(0);
    }
    for (;;)
    {
      int i = a.getInputType();
      localObject = (CheckBox)localView.findViewById(2131624367);
      ((CheckBox)localObject).setVisibility(0);
      ((CheckBox)localObject).setOnCheckedChangeListener(new dq(this, i));
      a.setHint("");
      setContentView(localView);
      setButton(-1, mContext.getResources().getString(2131231270), new dr(this));
      setButton(-2, mContext.getResources().getString(2131231265), new ds(this));
      setOnCancelListener(new dt(this));
      button_ok.setTextColor(paramContext.getResources().getColorStateList(2131558759));
      button_ok.setEnabled(false);
      a.addTextChangedListener(new du(this));
      if (paramBoolean) {
        d.addTextChangedListener(new dv(this));
      }
      g = ((CheckBox)localView.findViewById(2131624784));
      f = ((EditText)localView.findViewById(2131624787));
      paramContext = ai.b(mContext).w();
      if (paramContext != null) {
        f.setText(paramContext);
      }
      f.setSelectAllOnFocus(true);
      f.setEnabled(g.isChecked());
      g.setOnCheckedChangeListener(new dw(this));
      setTitle(2131231636);
      requestInputMethod();
      return;
      ((TableRow)localObject).setVisibility(8);
      localTableRow1.setVisibility(8);
      localTableRow2.setVisibility(0);
      localTableRow3.setVisibility(8);
      localView.findViewById(2131624783).setVisibility(8);
    }
  }
  
  private boolean h()
  {
    return g.isChecked();
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
  
  public void dismiss()
  {
    super.dismiss();
    if ((h()) && (g() != null)) {
      ai.b(mContext).a(g());
    }
  }
  
  public boolean e()
  {
    return b.isChecked();
  }
  
  public boolean f()
  {
    return c.isChecked();
  }
  
  public String g()
  {
    if (!h()) {}
    while ((f.getEditableText() == null) || (f.getEditableText().toString().isEmpty())) {
      return null;
    }
    return f.getEditableText().toString();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */