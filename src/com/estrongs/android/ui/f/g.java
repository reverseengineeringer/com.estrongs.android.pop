package com.estrongs.android.ui.f;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.estrongs.android.ui.theme.al;
import java.util.Map;

class g
  implements View.OnClickListener
{
  g(f paramf) {}
  
  public void onClick(View paramView)
  {
    ((ImageView)f.d(a).get(f.a(a))).setImageDrawable(al.a(f.c(a)).a(((Integer)f.b(a).get(f.a(a))).intValue()));
    f.a(a, (String)f.e(a).get(paramView));
    ((ImageView)f.d(a).get(f.a(a))).setImageDrawable(al.a(f.c(a)).a(((Integer)f.f(a).get(f.a(a))).intValue()));
    a.dismiss();
    a.a(f.a(a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.f.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */