package com.estrongs.android.ui.b;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.bk;

public class l
  extends ci
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
    setTitle(2131230847);
    View localView = k.a(paramActivity).inflate(2130903350, null);
    setContentView(localView);
    int i = g.a(paramActivity, 6.0F);
    a = ((EditText)localView.findViewById(2131625241));
    if (bk.b(paramString)) {
      a.setText(paramString);
    }
    a.setTextColor(at.a(paramActivity).c(2131558661));
    a.setBackgroundResource(2130838299);
    a.setPadding(i, 0, i, 0);
    b = ((EditText)localView.findViewById(2131625243));
    b.setTextColor(at.a(paramActivity).c(2131558661));
    b.setBackgroundResource(2130838299);
    b.setPadding(i, 0, i, 0);
    if (cl.a())
    {
      setConfirmButton(paramActivity.getText(2131231386), new m(this, paramActivity));
      setCancelButton(paramActivity.getText(2131231387), new n(this, paramActivity));
    }
    for (;;)
    {
      requestInputMethod();
      return;
      setSingleButton(paramActivity.getText(2131231386), new p(this, paramActivity));
    }
  }
  
  private boolean a(String paramString)
  {
    boolean bool;
    if (bk.b(paramString))
    {
      paramString = paramString.toLowerCase();
      if ((paramString.startsWith("ftp://")) || (paramString.startsWith("ftps://")) || (paramString.startsWith("sftp://")) || (paramString.startsWith("http://")) || (paramString.startsWith("https://"))) {
        bool = true;
      }
    }
    for (;;)
    {
      if (!bool) {
        ak.a(getContext(), 2131232524, 0);
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