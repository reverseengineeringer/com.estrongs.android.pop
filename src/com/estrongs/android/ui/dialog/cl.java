package com.estrongs.android.ui.dialog;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class cl
  implements AdapterView.OnItemClickListener
{
  cl(ci paramci) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (cw)paramAdapterView.getAdapter();
    paramAdapterView.a(paramInt);
    paramAdapterView.notifyDataSetChanged();
    ci.access$300(a).onClick(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */