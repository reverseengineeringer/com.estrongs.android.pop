package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter.FilterResults;

class u
  extends Filter
{
  v a;
  
  u(v paramv)
  {
    a = paramv;
  }
  
  public CharSequence convertResultToString(Object paramObject)
  {
    return a.convertToString((Cursor)paramObject);
  }
  
  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    paramCharSequence = a.runQueryOnBackgroundThread(paramCharSequence);
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    if (paramCharSequence != null)
    {
      count = paramCharSequence.getCount();
      values = paramCharSequence;
      return localFilterResults;
    }
    count = 0;
    values = null;
    return localFilterResults;
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    paramCharSequence = a.getCursor();
    if ((values != null) && (values != paramCharSequence)) {
      a.changeCursor((Cursor)values);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */