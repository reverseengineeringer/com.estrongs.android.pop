package com.estrongs.android.ui.a;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.estrongs.android.pop.ad;
import com.estrongs.fs.impl.local.l;

class bi
  implements CompoundButton.OnCheckedChangeListener
{
  bi(aa paramaa) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      new Thread(new bj(this, paramCompoundButton)).start();
      return;
    }
    new Thread(new bm(this)).start();
    ad.a(aa.a(a)).a(false);
    l.f();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */