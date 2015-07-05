package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.Context;
import com.estrongs.android.ui.view.b;
import com.estrongs.android.util.am;

public class ey
{
  private cg a;
  private Context b;
  private boolean c;
  
  public ey(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    b = paramContext;
    c = paramBoolean;
    b(new b((Activity)paramContext, paramString1, paramString2));
    a(am.by(paramString1));
  }
  
  public ey(Context paramContext, String paramString, boolean paramBoolean)
  {
    b = paramContext;
    c = paramBoolean;
    b(new b((Activity)paramContext, paramString));
    a(paramString);
  }
  
  private void a(b paramb)
  {
    paramb.a(new ez(this));
  }
  
  private void a(String paramString)
  {
    String str = paramString;
    if ("ftpes".equalsIgnoreCase(paramString)) {
      str = "ftps";
    }
    str = str.toUpperCase();
    paramString = b.getString(2131427822, new Object[] { str });
    if (!c) {
      paramString = b.getString(2131427823, new Object[] { str });
    }
    a.setTitle(paramString);
  }
  
  private void b(b paramb)
  {
    a(paramb);
    a = new ct(b).a(paramb.aq()).b(2131427339, new fb(this, paramb)).c(2131427340, new fa(this)).b();
  }
  
  public void a()
  {
    a.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */