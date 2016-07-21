package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.Context;
import com.estrongs.android.ui.view.b;
import com.estrongs.android.util.ap;

public class fb
{
  private ci a;
  private Context b;
  private boolean c;
  
  public fb(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    b = paramContext;
    c = paramBoolean;
    b(new b((Activity)paramContext, paramString1, paramString2));
    a(ap.bP(paramString1));
  }
  
  public fb(Context paramContext, String paramString, boolean paramBoolean)
  {
    b = paramContext;
    c = paramBoolean;
    b(new b((Activity)paramContext, paramString));
    a(paramString);
  }
  
  private void a(b paramb)
  {
    paramb.a(new fc(this));
  }
  
  private void a(String paramString)
  {
    String str = paramString;
    if ("ftpes".equalsIgnoreCase(paramString)) {
      str = "ftps";
    }
    str = str.toUpperCase();
    paramString = b.getString(2131231829, new Object[] { str });
    if (!c) {
      paramString = b.getString(2131231407, new Object[] { str });
    }
    a.setTitle(paramString);
  }
  
  private void b(b paramb)
  {
    a(paramb);
    a = new cv(b).a(paramb.aE()).b(2131231270, new fe(this, paramb)).c(2131231265, new fd(this)).b();
  }
  
  public void a()
  {
    a.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */