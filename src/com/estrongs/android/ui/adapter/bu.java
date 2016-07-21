package com.estrongs.android.ui.adapter;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.estrongs.android.pop.ad;
import com.estrongs.fs.impl.local.m;

class bu
  implements CompoundButton.OnCheckedChangeListener
{
  bu(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      new Thread(new bv(this, paramCompoundButton)).start();
      return;
    }
    new Thread(new by(this)).start();
    ad.a(ListAdapter_NewNavi.a(a)).a(false);
    m.f();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */