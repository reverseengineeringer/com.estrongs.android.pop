package android.support.v4.view;

import android.database.DataSetObserver;

class en
  extends DataSetObserver
{
  private en(ViewPager paramViewPager) {}
  
  public void onChanged()
  {
    a.dataSetChanged();
  }
  
  public void onInvalidated()
  {
    a.dataSetChanged();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */