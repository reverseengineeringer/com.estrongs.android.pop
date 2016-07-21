package com.estrongs.android.ui.controller;

import com.estrongs.android.cleaner.a.a.c;
import com.estrongs.android.i.a;
import com.estrongs.android.ui.controller.widget.ESFloatingActionButton;

class bn
  extends Thread
{
  bn(bm parambm) {}
  
  public void run()
  {
    float f1 = a.a("Cleaner_Mem_Threshold_Percent", 70) / 100.0F;
    float f2 = c.b(bm.a(a));
    bm.b(a).post(new bo(this, f1, f2));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */