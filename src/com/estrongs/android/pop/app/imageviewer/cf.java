package com.estrongs.android.pop.app.imageviewer;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

class cf
  implements AdapterView.OnItemSelectedListener
{
  cf(ViewImage21 paramViewImage21) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (a.c != paramInt) {
      a.a(paramInt, ViewImage21.c(a));
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */