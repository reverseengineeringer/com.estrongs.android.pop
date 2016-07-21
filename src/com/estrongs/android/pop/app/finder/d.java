package com.estrongs.android.pop.app.finder;

import android.annotation.SuppressLint;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import com.estrongs.android.pop.app.finder.data.FinderGroupData;
import com.estrongs.android.pop.app.finder.data.FinderGroupData.GroupType;
import com.estrongs.android.pop.app.finder.data.FinderItemData;
import com.estrongs.android.pop.app.finder.data.FinderItemData.AdditionalType;
import com.estrongs.android.util.ap;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

class d
  extends AsyncTask<Void, Void, List<FinderGroupData>>
{
  private String b;
  private boolean c = false;
  
  public d(a parama, String paramString, boolean paramBoolean)
  {
    b = paramString;
    c = paramBoolean;
  }
  
  private FinderGroupData a(Map<FinderGroupData.GroupType, FinderGroupData> paramMap, FinderGroupData.GroupType paramGroupType)
  {
    if (paramMap.containsKey(paramGroupType)) {
      return (FinderGroupData)paramMap.get(paramGroupType);
    }
    FinderGroupData localFinderGroupData = FinderGroupData.a(paramGroupType);
    paramMap.put(paramGroupType, localFinderGroupData);
    return localFinderGroupData;
  }
  
  private void a(Map<FinderGroupData.GroupType, FinderGroupData> paramMap)
  {
    paramMap = paramMap.values().iterator();
    while (paramMap.hasNext())
    {
      Iterator localIterator = ((FinderGroupData)paramMap.next()).a().iterator();
      while (localIterator.hasNext())
      {
        FinderItemData localFinderItemData = (FinderItemData)localIterator.next();
        localFinderItemData.a(localFinderItemData.b());
      }
    }
  }
  
  private void a(Map<FinderGroupData.GroupType, FinderGroupData> paramMap, String paramString)
  {
    b(paramMap, paramString);
    c(paramMap, paramString);
    d(paramMap, paramString);
    e(paramMap, paramString);
  }
  
  private void b(Map<FinderGroupData.GroupType, FinderGroupData> paramMap, String paramString)
  {
    boolean bool2 = true;
    paramMap = a(paramMap, FinderGroupData.GroupType.Additional);
    c = 1;
    paramMap.a(2131231491).a(FinderItemData.AdditionalType.System_file);
    FinderItemData localFinderItemData = paramMap.a(2131231496).a(FinderItemData.AdditionalType.Hidden_file);
    if (!ap.ai(paramString))
    {
      bool1 = true;
      localFinderItemData.c(bool1);
      paramMap = paramMap.a(2131231489).a(FinderItemData.AdditionalType.Media_file);
      if ((ap.ai(paramString)) || (ap.ae(paramString))) {
        break label102;
      }
    }
    label102:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramMap.c(bool1);
      return;
      bool1 = false;
      break;
    }
  }
  
  private void c(Map<FinderGroupData.GroupType, FinderGroupData> paramMap, String paramString)
  {
    paramMap = a(paramMap, FinderGroupData.GroupType.Size);
    c = 3;
    paramMap.a("<1M").a(-1L).b(1048576L);
    paramMap.a("1-10M").a(1048576L).b(10485760L);
    paramMap.a("10-100M").a(10485760L).b(104857600L);
    paramMap.a(">100M").a(104857600L).b(-1L);
  }
  
  private void d(Map<FinderGroupData.GroupType, FinderGroupData> paramMap, String paramString)
  {
    long l = System.currentTimeMillis();
    paramMap = a(paramMap, FinderGroupData.GroupType.Time);
    c = 3;
    paramMap.a(2131231493).c(l - 86400000L).d(-1L);
    paramMap.a(2131231498).c(l - 259200000L).d(-1L);
    paramMap.a(2131231501).c(l - 604800000L).d(-1L);
    paramMap.a(2131231494).c(l - 2592000000L).d(-1L);
    paramMap.a(2131231492).c(l - 15552000000L).d(-1L);
  }
  
  private void e(Map<FinderGroupData.GroupType, FinderGroupData> paramMap, String paramString)
  {
    boolean bool3 = false;
    boolean bool1;
    FinderItemData localFinderItemData;
    if ((ap.bx(paramString)) || (ap.bl(paramString)))
    {
      bool1 = true;
      paramMap = a(paramMap, FinderGroupData.GroupType.Type);
      c = 3;
      localFinderItemData = paramMap.a(2131231130).a("book://").c(bool1);
      bool2 = localFinderItemData.a();
      if (((!bool1) || (!bool2)) && (!ap.ae(paramString))) {
        break label286;
      }
      bool2 = true;
      label76:
      localFinderItemData.a(bool2);
      localFinderItemData.b(localFinderItemData.a());
      localFinderItemData = paramMap.a(2131231136).a("music://").c(bool1);
      bool2 = localFinderItemData.a();
      if (((!bool1) || (!bool2)) && (!ap.V(paramString))) {
        break label292;
      }
      bool2 = true;
      label137:
      localFinderItemData.a(bool2);
      localFinderItemData.b(localFinderItemData.a());
      localFinderItemData = paramMap.a(2131231135).a("video://").c(bool1);
      bool2 = localFinderItemData.a();
      if (((!bool1) || (!bool2)) && (!ap.Z(paramString))) {
        break label298;
      }
    }
    label286:
    label292:
    label298:
    for (boolean bool2 = true;; bool2 = false)
    {
      localFinderItemData.a(bool2);
      localFinderItemData.b(localFinderItemData.a());
      paramMap = paramMap.a(2131231138).a("pic://").c(bool1);
      bool2 = paramMap.a();
      if (((!bool1) || (!bool2)) && (!ap.X(paramString)))
      {
        bool1 = bool3;
        if (!ap.aY(paramString)) {}
      }
      else
      {
        bool1 = true;
      }
      paramMap.a(bool1);
      paramMap.b(paramMap.a());
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label76;
      bool2 = false;
      break label137;
    }
  }
  
  protected List<FinderGroupData> a(Void... paramVarArgs)
  {
    if ((a.a(a) == null) || (c))
    {
      a.a(a, new LinkedHashMap());
      a(a.b(a), b);
      if (a.a(a) == null) {
        a.b(a, a.b(a));
      }
    }
    for (;;)
    {
      paramVarArgs = new CopyOnWriteArrayList();
      Iterator localIterator = a.b(a).values().iterator();
      while (localIterator.hasNext()) {
        paramVarArgs.add((FinderGroupData)localIterator.next());
      }
      if (a.c(a) != b)
      {
        a.a(a, a.a(a));
        a(a.b(a), b);
      }
      else
      {
        a.a(a, a.a(a));
        a(a.b(a));
      }
    }
    return paramVarArgs;
  }
  
  @SuppressLint({"InlinedApi"})
  protected void a()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      super.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
      return;
    }
    super.execute(new Void[0]);
  }
  
  protected void a(List<FinderGroupData> paramList)
  {
    if ((a.d(a) == null) || (!a.d(a).a())) {
      return;
    }
    a.a(a, b);
    a.d(a).a(paramList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.finder.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */