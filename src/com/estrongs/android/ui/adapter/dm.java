package com.estrongs.android.ui.adapter;

import android.view.View.OnClickListener;
import android.widget.CompoundButton.OnCheckedChangeListener;
import java.util.List;

public class dm
{
  String b;
  List<a> c;
  int d;
  int e;
  String f;
  public CompoundButton.OnCheckedChangeListener g;
  public View.OnClickListener h;
  
  public dm(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    h = paramOnClickListener;
  }
  
  public void a(CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    g = paramOnCheckedChangeListener;
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */