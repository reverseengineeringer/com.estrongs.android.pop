package com.dianxinos.lockscreen.fragment;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.aj;
import android.support.v4.app.au;
import android.view.ViewGroup;
import java.util.ArrayList;

public class c
  extends au
{
  ArrayList<TabInfo> a = null;
  Context b = null;
  public boolean c = false;
  
  public c(Context paramContext, aj paramaj, ArrayList<TabInfo> paramArrayList)
  {
    super(paramArrayList);
    ArrayList localArrayList;
    a = localArrayList;
    b = paramaj;
  }
  
  public Fragment a(int paramInt)
  {
    if ((a != null) && (paramInt < a.size()))
    {
      localObject = (TabInfo)a.get(paramInt);
      if (localObject == null) {
        return null;
      }
    }
    for (Object localObject = ((TabInfo)localObject).b();; localObject = null) {
      return (Fragment)localObject;
    }
  }
  
  public int getCount()
  {
    if ((a != null) && (a.size() > 0)) {
      return a.size();
    }
    return 0;
  }
  
  public int getItemPosition(Object paramObject)
  {
    return -2;
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if ((c) && (paramInt == getCount() - 1)) {
      c = false;
    }
    TabInfo localTabInfo = (TabInfo)a.get(paramInt);
    paramViewGroup = (a)super.instantiateItem(paramViewGroup, paramInt);
    b = paramViewGroup;
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.fragment.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */