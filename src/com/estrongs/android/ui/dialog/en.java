package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.text.InputFilter;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.util.j;

class en
{
  Activity a;
  Dialog b;
  EditText c;
  boolean d = false;
  boolean e = true;
  eu f = null;
  String g;
  
  public en(Activity paramActivity, Dialog paramDialog, String paramString)
  {
    a = paramActivity;
    b = paramDialog;
    a(true);
    g = paramString;
    c = new EditText(paramActivity);
    c.setTextSize(1, 15.0F);
    c.setBackgroundResource(2130838299);
    int i = g.a(paramActivity, 6.0F);
    c.setPadding(0, i, i, i);
    c.setTextColor(at.a(paramActivity).c(2131558661));
    c.setSingleLine();
    c.setOnKeyListener(new eo(this));
    paramActivity = new ep(this, 255);
    c.setFilters(new InputFilter[] { paramActivity });
    c.addTextChangedListener(new eq(this));
  }
  
  public void a(eu parameu)
  {
    f = parameu;
  }
  
  public void a(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public boolean a()
  {
    String str = c.getText().toString().trim().trim();
    if (str.getBytes().length > 255)
    {
      ak.a(a, a.getString(2131231766), 0);
      return false;
    }
    if (str.length() < 1)
    {
      ak.a(a, a.getString(2131231765), 0);
      return false;
    }
    if ((e) && (!j.c(str)))
    {
      ak.a(a, a.getString(2131231764), 0);
      return false;
    }
    if ((f != null) && (!f.a(str))) {
      return true;
    }
    b.dismiss();
    return true;
  }
  
  public View b()
  {
    return c;
  }
  
  public void c()
  {
    if (g != null)
    {
      c.setText(g);
      if ((g.contains(".")) && (d)) {
        c.setSelection(0, g.lastIndexOf("."));
      }
    }
    else
    {
      return;
    }
    c.selectAll();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */