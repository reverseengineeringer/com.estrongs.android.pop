package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.util.List;

public class du
{
  private eb a = null;
  
  public du(Activity paramActivity, List<h> paramList, String paramString)
  {
    a = new eb(paramActivity, paramList, paramString);
  }
  
  public void a()
  {
    Object localObject = a.aq();
    ct localct = new ct(((View)localObject).getContext()).a(2131427577);
    localct.a((View)localObject);
    if (!am.bP(a.g)) {
      localct.a(2131427340, new dv(this));
    }
    for (;;)
    {
      localct.a(new ea(this));
      localObject = localct.b();
      a.h = ((Dialog)localObject);
      ((cg)localObject).show();
      a.c();
      return;
      localct.c(2131427340, new dw(this));
      localct.b(2131427380, new dx(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */