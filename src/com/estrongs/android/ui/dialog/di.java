package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.text.InputFilter;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.util.j;

class di
{
  Activity a;
  Dialog b;
  EditText c;
  boolean d = true;
  i e = null;
  
  public di(Activity paramActivity, Dialog paramDialog)
  {
    a = paramActivity;
    b = paramDialog;
    c = new EditText(paramActivity);
    c.setTextSize(1, 18.0F);
    c.setBackgroundResource(2130838299);
    int i = g.a(paramActivity, 6.0F);
    c.setPadding(i, 0, i, 0);
    c.setTextColor(at.a(paramActivity).c(2131558661));
    c.setSingleLine();
    c.setHint(paramActivity.getResources().getString(2131231610));
    c.setOnKeyListener(new dj(this));
    paramActivity = new dk(this, 20);
    c.setFilters(new InputFilter[] { paramActivity });
  }
  
  public void a(i parami)
  {
    e = parami;
  }
  
  public boolean a()
  {
    String str2 = c.getText().toString().trim().trim();
    String str1 = str2;
    if (str2.startsWith(".")) {
      str1 = str2.substring(1);
    }
    if (str1.getBytes().length > 20)
    {
      ak.a(a, a.getString(2131231755), 0);
      return false;
    }
    if (str1.length() < 1)
    {
      ak.a(a, a.getString(2131231754), 0);
      return false;
    }
    if ((d) && (!j.c(str1)))
    {
      ak.a(a, a.getString(2131231753), 0);
      return false;
    }
    if (e != null) {
      e.a(str1);
    }
    b.dismiss();
    return true;
  }
  
  public View b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */