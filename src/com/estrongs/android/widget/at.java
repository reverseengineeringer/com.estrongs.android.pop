package com.estrongs.android.widget;

import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.estrongs.android.view.cd;
import com.estrongs.fs.h;
import com.estrongs.fs.m;

class at
  implements AdapterView.OnItemClickListener
{
  at(ao paramao) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (h)a.b().e(paramInt);
    if (paramAdapterView.getFileType().a())
    {
      a.i.a(paramAdapterView);
      if (a.n != null)
      {
        paramView = paramAdapterView.getExtra("item_count");
        if (paramView == null) {
          break label120;
        }
        a.n.setText(paramAdapterView.getName() + "(" + paramView + ")");
        a.n.setEllipsize(TextUtils.TruncateAt.valueOf("MIDDLE"));
      }
    }
    return;
    label120:
    a.n.setText(paramAdapterView.getName());
    a.n.setEllipsize(TextUtils.TruncateAt.valueOf("END"));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */