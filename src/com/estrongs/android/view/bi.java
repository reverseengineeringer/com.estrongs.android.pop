package com.estrongs.android.view;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.estrongs.fs.h;

public class bi<T>
  extends cg<h>.ck<T>
{
  protected bi(ak paramak)
  {
    super(paramak);
  }
  
  public ci a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = a.aj.inflate(2130903152, null, false);
    return (bl)c.b(paramViewGroup);
  }
  
  public void a(ci paramci, int paramInt)
  {
    super.a(paramci, paramInt);
  }
  
  public int getItemCount()
  {
    return a.d();
  }
  
  public int getItemViewType(int paramInt)
  {
    return paramInt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */