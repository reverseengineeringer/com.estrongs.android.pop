package android.support.v4.widget;

import android.database.DataSetObserver;

class t
  extends DataSetObserver
{
  private t(q paramq) {}
  
  public void onChanged()
  {
    a.mDataValid = true;
    a.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    a.mDataValid = false;
    a.notifyDataSetInvalidated();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */