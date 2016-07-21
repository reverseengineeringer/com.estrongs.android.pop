package com.estrongs.android.ui.f;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.estrongs.android.ui.theme.at;
import java.util.Map;

class m
  implements View.OnClickListener
{
  m(l paraml) {}
  
  public void onClick(View paramView)
  {
    ((ImageView)l.d(a).get(l.a(a))).setImageDrawable(at.a(l.c(a)).a(((Integer)l.b(a).get(l.a(a))).intValue()));
    l.a(a, (String)l.e(a).get(paramView));
    ((ImageView)l.d(a).get(l.a(a))).setImageDrawable(at.a(l.c(a)).a(((Integer)l.f(a).get(l.a(a))).intValue()));
    a.dismiss();
    a.a(l.a(a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.f.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */