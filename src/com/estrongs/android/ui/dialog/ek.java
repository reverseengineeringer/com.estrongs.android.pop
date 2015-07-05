package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.text.InputFilter;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.util.j;

class ek
{
  Activity a;
  Dialog b;
  EditText c;
  boolean d = false;
  boolean e = false;
  boolean f = true;
  er g = null;
  String h;
  
  public ek(Activity paramActivity, Dialog paramDialog, String paramString)
  {
    a = paramActivity;
    b = paramDialog;
    a(true);
    h = paramString;
    c = new EditText(paramActivity);
    c.setTextSize(1, 18.0F);
    c.setBackgroundResource(2130837972);
    int i = a.a(paramActivity, 6.0F);
    c.setPadding(i, 0, i, 0);
    c.setTextColor(al.a(paramActivity).d(2131230738));
    c.setSingleLine();
    c.setOnKeyListener(new el(this));
    paramActivity = new em(this, 255);
    c.setFilters(new InputFilter[] { paramActivity });
    c.addTextChangedListener(new en(this));
  }
  
  public void a(er paramer)
  {
    g = paramer;
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
    if (!e) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      d = paramBoolean;
      return;
    }
  }
  
  public boolean a()
  {
    String str = c.getText().toString().trim().trim();
    if (str.getBytes().length > 255)
    {
      ag.a(a, a.getString(2131427919), 0);
      return false;
    }
    if (str.length() < 1)
    {
      ag.a(a, a.getString(2131427874), 0);
      return false;
    }
    if ((f) && (!j.c(str)))
    {
      ag.a(a, a.getString(2131427875), 0);
      return false;
    }
    int i;
    if (d)
    {
      String[] arrayOfString = new String[6];
      arrayOfString[0] = "AUX";
      arrayOfString[1] = "CLOCK$";
      arrayOfString[2] = "CON";
      arrayOfString[3] = "NUL";
      arrayOfString[4] = "PRN";
      arrayOfString[5] = "Thumbs.db";
      i = 0;
      if (i >= arrayOfString.length) {
        break label314;
      }
      if (!str.equals(arrayOfString[i])) {}
    }
    label314:
    for (int j = 0;; j = 1)
    {
      i = j;
      if (j != 0)
      {
        i = j;
        if (str.length() == 4) {
          if (!str.startsWith("COM"))
          {
            i = j;
            if (!str.startsWith("LPT")) {}
          }
          else
          {
            i = j;
            if (Character.isDigit(Character.valueOf(str.charAt(3)).charValue())) {
              i = 0;
            }
          }
        }
      }
      j = i;
      if (i != 0)
      {
        j = i;
        if (!j.c(str)) {
          j = 0;
        }
      }
      if (j == 0)
      {
        ag.a(a, a.getString(2131427954), 0);
        return false;
        i += 1;
        break;
      }
      if ((g != null) && (!g.a(str))) {
        return true;
      }
      b.dismiss();
      return true;
    }
  }
  
  public View b()
  {
    return c;
  }
  
  public void b(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void c()
  {
    if (h != null)
    {
      c.setText(h);
      if ((h.contains(".")) && (e)) {
        c.setSelection(0, h.lastIndexOf("."));
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
 * Qualified Name:     com.estrongs.android.ui.dialog.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */