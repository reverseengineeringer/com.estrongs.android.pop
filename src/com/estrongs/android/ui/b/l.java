package com.estrongs.android.ui.b;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.bd;

public class l
  extends cg
{
  private EditText a;
  private EditText b;
  
  public l(Activity paramActivity)
  {
    this(paramActivity, null);
  }
  
  public l(Activity paramActivity, String paramString)
  {
    super(paramActivity);
    setTitle(2131427359);
    View localView = g.a(paramActivity).inflate(2130903199, null);
    setContentView(localView);
    int i = a.a(paramActivity, 6.0F);
    a = ((EditText)localView.findViewById(2131362504));
    if (bd.b(paramString)) {
      a.setText(paramString);
    }
    a.setTextColor(al.a(paramActivity).d(2131230738));
    a.setBackgroundResource(2130837972);
    a.setPadding(i, 0, i, 0);
    b = ((EditText)localView.findViewById(2131362506));
    b.setTextColor(al.a(paramActivity).d(2131230738));
    b.setBackgroundResource(2130837972);
    b.setPadding(i, 0, i, 0);
    if (cc.a())
    {
      setConfirmButton(paramActivity.getText(2131428202), new m(this, paramActivity));
      setCancelButton(paramActivity.getText(2131428549), new n(this, paramActivity));
    }
    for (;;)
    {
      requestInputMethod();
      return;
      setSingleButton(paramActivity.getText(2131428202), new p(this, paramActivity));
    }
  }
  
  private boolean a(String paramString)
  {
    boolean bool;
    if (bd.b(paramString))
    {
      paramString = paramString.toLowerCase();
      if ((paramString.startsWith("ftp://")) || (paramString.startsWith("ftps://")) || (paramString.startsWith("sftp://")) || (paramString.startsWith("http://")) || (paramString.startsWith("https://"))) {
        bool = true;
      }
    }
    for (;;)
    {
      if (!bool) {
        ag.a(getContext(), 2131428239, 0);
      }
      return bool;
      bool = false;
      continue;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */