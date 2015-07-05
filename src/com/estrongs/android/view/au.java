package com.estrongs.android.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.drag.DragGrid;
import com.estrongs.android.ui.drag.j;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.widget.e;
import java.util.Map;

class au
  implements AdapterView.OnItemClickListener
{
  au(as paramas) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (a.l)
    {
      paramAdapterView = (e)paramView.getTag();
      paramView = g;
      if (!paramView.isChecked())
      {
        bool = true;
        paramView.setChecked(bool);
        a.c(paramInt);
        if (!a.h(paramInt)) {
          break label153;
        }
        paramView = new j();
        paramView.a(paramInt);
        paramView.a((DragGrid)d);
        d.setBackgroundResource(2130837568);
        paramView.a(a.a(d));
        a.n.put(a.g(paramInt), paramView);
        d.setBackgroundDrawable(al.a(a.ad).a(2130837806));
      }
    }
    label153:
    while (a.h == null)
    {
      for (;;)
      {
        return;
        boolean bool = false;
      }
      a.n.remove(a.g(paramInt));
      d.setBackgroundDrawable(null);
      return;
    }
    a.h.onItemClick(paramAdapterView, paramView, paramInt, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */