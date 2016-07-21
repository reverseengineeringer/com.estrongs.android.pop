package com.estrongs.android.view;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.estrongs.fs.x;

class e
  implements AdapterView.OnItemClickListener
{
  e(b paramb) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (com.estrongs.android.ui.recycler.b)paramAdapterView.getAdapter().getItem(paramInt);
    b.a(a).dismiss();
    if (a.equals(a.C)) {
      return;
    }
    paramView = new x(a);
    b.a(a, b);
    b.c(a).setText(b.b(a));
    a.c(paramView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */