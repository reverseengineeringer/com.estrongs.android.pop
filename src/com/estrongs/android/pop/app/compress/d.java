package com.estrongs.android.pop.app.compress;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.util.c;
import com.estrongs.fs.util.j;
import java.io.File;

class d
  implements View.OnClickListener
{
  d(a parama, View paramView) {}
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131361875)
    {
      a.a(b, null);
      a.b(b).setVisibility(0);
      a.a(b, 3);
    }
    for (;;)
    {
      if (paramView.getId() == 2131361878) {
        new c(a.d(b), a.i(b), new e(this)).a();
      }
      return;
      if (paramView.getId() == 2131361874)
      {
        a.a(b, a.k(b).getAbsoluteFile().getParentFile().getPath());
        a.b(b).setVisibility(8);
        a.a(b, 1);
      }
      else if (paramView.getId() == 2131361873)
      {
        a.a(b, a.k(b).getAbsoluteFile().getParentFile().getPath() + "/" + j.a(a.b(b, a.k(b).getName())));
        a.b(b).setVisibility(8);
        a.a(b, 2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */