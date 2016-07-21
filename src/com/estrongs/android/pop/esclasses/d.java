package com.estrongs.android.pop.esclasses;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import com.estrongs.android.util.l;

class d
  implements AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener
{
  private d(CopyOfHeaderGridView paramCopyOfHeaderGridView) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (CopyOfHeaderGridView.b(a) != null)
    {
      int i = paramInt - a.getHeaderViewCount() * CopyOfHeaderGridView.c(a);
      l.c("", "sssssssssssss onItemClick:" + paramInt + " resPos:" + i);
      if (i >= 0) {
        CopyOfHeaderGridView.b(a).onItemClick(paramAdapterView, paramView, i, paramLong);
      }
    }
  }
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (CopyOfHeaderGridView.d(a) != null)
    {
      int i = paramInt - a.getHeaderViewCount() * CopyOfHeaderGridView.c(a);
      l.c("", "sssssssssssss onItemLongClick:" + paramInt + " resPos:" + i);
      if (i >= 0) {
        CopyOfHeaderGridView.d(a).onItemLongClick(paramAdapterView, paramView, i, paramLong);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */