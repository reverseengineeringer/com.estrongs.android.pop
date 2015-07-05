package com.estrongs.android.ui.b;

import android.view.View;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.fs.h;

public class d
{
  private q a = null;
  
  public d(ESActivity paramESActivity, h paramh)
  {
    a = new q(paramESActivity, paramh);
  }
  
  public void a()
  {
    Object localObject = a.aq();
    ct localct = new ct(((View)localObject).getContext()).a(2131427577);
    localct.a((View)localObject);
    localct.a(2131427340, new e(this));
    localObject = localct.b();
    a.a = ((cg)localObject);
    ((cg)localObject).show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */