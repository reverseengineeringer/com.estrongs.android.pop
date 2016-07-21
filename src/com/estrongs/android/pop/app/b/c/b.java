package com.estrongs.android.pop.app.b.c;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.estrongs.android.pop.app.b.c;
import com.estrongs.android.pop.app.b.i;

class b
  implements CompoundButton.OnCheckedChangeListener
{
  b(a parama, i parami, com.estrongs.android.pop.app.b.b paramb) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    a.a = paramBoolean;
    b.l.a(a, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */