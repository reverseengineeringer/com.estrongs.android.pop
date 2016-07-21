package com.estrongs.android.ui.adapter;

import com.estrongs.android.ui.preference.q;
import java.util.HashSet;

class ao
  implements q
{
  ao(ListAdapter_NewNavi paramListAdapter_NewNavi, HashSet paramHashSet) {}
  
  public void a(String paramString, Object paramObject)
  {
    if (a.contains(paramString)) {
      b.notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */