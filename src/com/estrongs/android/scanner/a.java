package com.estrongs.android.scanner;

import android.database.Cursor;
import android.util.Pair;
import android.util.SparseArray;
import com.estrongs.android.scanner.d.ah;
import com.estrongs.android.scanner.d.ak;
import com.estrongs.android.util.ap;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class a
{
  private static a a = null;
  private final com.estrongs.android.scanner.d.a b = com.estrongs.android.scanner.d.a.a();
  private final SparseArray<String> c = new SparseArray();
  private final List<h> d = new CopyOnWriteArrayList();
  private volatile boolean e = false;
  
  private a()
  {
    c.put(6, "apkview");
    c.put(1, "imageview");
    c.put(2, "audioview");
    c.put(3, "videoview");
    c.put(4, "textview");
    c.put(5, "zipview");
    c.put(7, "encryptview");
  }
  
  private com.estrongs.android.scanner.a.d a(Cursor paramCursor)
  {
    String str2 = paramCursor.getString(0);
    String str3 = paramCursor.getString(1);
    String str1 = paramCursor.getString(2);
    int i = paramCursor.getInt(3);
    long l1 = paramCursor.getLong(4);
    long l2 = paramCursor.getLong(5);
    paramCursor = new com.estrongs.android.scanner.a.d(str2 + str3, str3, l2, l1);
    paramCursor.d(i);
    paramCursor.b(str1);
    return paramCursor;
  }
  
  public static a a()
  {
    try
    {
      if (a == null) {
        a = new a();
      }
      a locala = a;
      return locala;
    }
    finally {}
  }
  
  private List<com.estrongs.android.scanner.a.d> a(int paramInt, String paramString1, String paramString2)
  {
    if (paramInt == 4) {
      return a(paramString1, paramString2);
    }
    String str = (String)c.get(paramInt);
    if (str == null) {
      return Collections.emptyList();
    }
    LinkedList localLinkedList = new LinkedList();
    c localc = new c(this, paramInt, localLinkedList);
    b.a(localc, str, new String[] { "path", "name", "groupname", "filetype", "size", "lastmodified" }, paramString1, paramString2);
    return localLinkedList;
  }
  
  private List<com.estrongs.android.scanner.a.d> a(String paramString1, String paramString2)
  {
    LinkedList localLinkedList = new LinkedList();
    b localb = new b(this, localLinkedList);
    b.a(localb, "textview", new String[] { "path", "name", "groupname", "filetype", "size", "lastmodified", "archive" }, paramString1, paramString2);
    return localLinkedList;
  }
  
  private int b(long paramLong1, long paramLong2)
  {
    int j = c.size();
    ExecutorService localExecutorService = Executors.newFixedThreadPool(j);
    Object localObject1 = new ArrayList(j);
    int i = 0;
    if (i < j)
    {
      int k = c.keyAt(i);
      if ((k == 5) || (k == 7)) {}
      for (;;)
      {
        i += 1;
        break;
        ((ArrayList)localObject1).add(localExecutorService.submit(new i(this, k, paramLong1)));
      }
    }
    localObject1 = ((ArrayList)localObject1).iterator();
    i = 0;
    Object localObject2;
    if (((Iterator)localObject1).hasNext()) {
      localObject2 = (Future)((Iterator)localObject1).next();
    }
    label184:
    for (;;)
    {
      try
      {
        localObject2 = (Integer)((Future)localObject2).get();
        if (localObject2 == null) {
          break label184;
        }
        j = ((Integer)localObject2).intValue();
        i = j + i;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      break;
      localExecutorService.shutdownNow();
      return i;
    }
  }
  
  private Comparator<com.estrongs.android.scanner.a.c> d()
  {
    return new d(this);
  }
  
  public final List<com.estrongs.android.scanner.a.d> a(int paramInt, long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("lastmodified").append(" > ").append(paramLong);
    localStringBuilder.append(" AND ").append("isLogPath").append("=1");
    return a(paramInt, localStringBuilder.toString(), "lastmodified DESC");
  }
  
  public final List<com.estrongs.android.scanner.a.d> a(int paramInt, Long[] paramArrayOfLong)
  {
    Object localObject1 = ah.a().a(paramInt, paramArrayOfLong);
    if (((List)localObject1).isEmpty()) {
      return Collections.emptyList();
    }
    paramArrayOfLong = new ArrayList();
    ArrayList localArrayList = new ArrayList(((List)localObject1).size());
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Pair localPair = (Pair)((Iterator)localObject1).next();
      Object localObject2 = (String)first;
      File localFile = new File((String)localObject2);
      if (localFile.exists())
      {
        localObject2 = new com.estrongs.android.scanner.a.d((String)localObject2, ap.d((String)localObject2), localFile.lastModified(), localFile.length());
        ((com.estrongs.android.scanner.a.d)localObject2).e(((Long)second).longValue());
        localArrayList.add(localObject2);
      }
      else
      {
        paramArrayOfLong.add(localObject2);
      }
    }
    if (!paramArrayOfLong.isEmpty()) {
      l.a().a(paramArrayOfLong);
    }
    return localArrayList;
  }
  
  public final List<com.estrongs.android.scanner.a.c> a(long paramLong)
  {
    long l = System.currentTimeMillis();
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < c.size())
    {
      int j = c.keyAt(i);
      if ((j == 5) || (j == 7)) {}
      for (;;)
      {
        i += 1;
        break;
        localArrayList.addAll(a(j, paramLong));
      }
    }
    Collections.sort(localArrayList, d());
    paramLong = System.currentTimeMillis();
    com.estrongs.android.util.l.e("Accessor", "getAllNewCreatedFiles: " + (paramLong - l) + " ms/" + localArrayList.size());
    return localArrayList;
  }
  
  public final List<Pair<Long, List<com.estrongs.android.pop.app.b.b>>> a(long paramLong1, long paramLong2, int paramInt, g paramg)
  {
    long l = System.currentTimeMillis();
    paramg = new ak(paramLong1, paramLong2, paramg).a(paramInt);
    paramLong1 = System.currentTimeMillis();
    com.estrongs.android.util.l.e("Accessor", "getNewCreatedItems: " + (paramLong1 - l) + " ms/" + paramg.size());
    return paramg;
  }
  
  public List<com.estrongs.android.scanner.a.d> a(f paramf)
  {
    return a(paramf, 0, 0);
  }
  
  public List<com.estrongs.android.scanner.a.d> a(f paramf, int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt2 < 0)) {
      throw new IllegalArgumentException("offset or limit less than 0!");
    }
    if (paramf == null) {
      return Collections.emptyList();
    }
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(paramf.c());
    ((StringBuilder)localObject1).append(paramf.e()).append(":").append(paramInt1).append(":").append(paramInt2);
    localObject1 = ((StringBuilder)localObject1).toString();
    com.estrongs.android.util.l.e("Accessor", "Accessor thread: " + Thread.currentThread().getName() + " : " + Thread.currentThread().getId() + ":" + ((String)localObject1).toString());
    long l1 = System.currentTimeMillis();
    localObject1 = paramf.e();
    String str = paramf.f();
    if ((paramInt1 != 0) || (paramInt2 != 0)) {
      str = str + " LIMIT " + paramInt1 + ", " + paramInt2;
    }
    for (;;)
    {
      Integer localInteger = paramf.d();
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramf.c().iterator();
      Object localObject2;
      if (localIterator.hasNext())
      {
        paramInt1 = ((Integer)localIterator.next()).intValue();
        com.estrongs.android.util.l.e("Accessor", "search: " + (String)c.get(paramInt1));
        if ((localInteger == null) || (paramInt1 != 4)) {
          break label448;
        }
        localObject2 = new StringBuilder((String)localObject1);
        if (!((String)localObject1).isEmpty()) {
          ((StringBuilder)localObject2).append(" AND ");
        }
        ((StringBuilder)localObject2).append("archive = ").append(localInteger);
        localObject1 = ((StringBuilder)localObject2).toString();
      }
      label448:
      for (;;)
      {
        if (paramf.b()) {}
        for (localObject2 = a(paramInt1, paramf.a());; localObject2 = a(paramInt1, (String)localObject1, str))
        {
          localArrayList.addAll((Collection)localObject2);
          break;
        }
        long l2 = System.currentTimeMillis();
        com.estrongs.android.util.l.e("Accessor", "search: " + (l2 - l1) + " ms/" + localArrayList.size());
        return localArrayList;
      }
    }
  }
  
  public Map<Integer, List<com.estrongs.android.scanner.a.d>> a(long paramLong1, long paramLong2)
  {
    int j = c.size();
    ExecutorService localExecutorService = Executors.newFixedThreadPool(j);
    Object localObject1 = new ArrayList(j);
    int i = 0;
    if (i < j)
    {
      int k = c.keyAt(i);
      if ((k == 5) || (k == 7)) {}
      for (;;)
      {
        i += 1;
        break;
        ((ArrayList)localObject1).add(localExecutorService.submit(new j(this, k, paramLong1, paramLong2)));
      }
    }
    HashMap localHashMap = new HashMap();
    localObject1 = ((ArrayList)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (Future)((Iterator)localObject1).next();
      try
      {
        localObject2 = (Pair)((Future)localObject2).get();
        if (localObject2 != null) {
          localHashMap.put(first, second);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    localExecutorService.shutdownNow();
    return localHashMap;
  }
  
  public final Map<Integer, Integer> a(Map<Integer, Long> paramMap, boolean paramBoolean)
  {
    if (paramMap == null) {
      return Collections.emptyMap();
    }
    ExecutorService localExecutorService = Executors.newFixedThreadPool(paramMap.size());
    b.b();
    Object localObject2 = new ArrayList(paramMap.size());
    Object localObject1 = paramMap.entrySet().iterator();
    int i = 0;
    while (((Iterator)localObject1).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject1).next();
      int j = ((Integer)localEntry.getKey()).intValue();
      if (j == 20165) {
        i = 1;
      } else {
        ((ArrayList)localObject2).add(localExecutorService.submit(new e(this, j, ((Long)localEntry.getValue()).longValue(), paramBoolean)));
      }
    }
    localObject1 = new HashMap();
    if (i != 0) {
      ((Map)localObject1).put(Integer.valueOf(20165), Integer.valueOf(b(((Long)paramMap.get(Integer.valueOf(20165))).longValue(), System.currentTimeMillis())));
    }
    paramMap = ((ArrayList)localObject2).iterator();
    while (paramMap.hasNext())
    {
      localObject2 = (Future)paramMap.next();
      try
      {
        localObject2 = (Pair)((Future)localObject2).get();
        if (localObject2 != null) {
          ((Map)localObject1).put(first, second);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    b.close();
    localExecutorService.shutdownNow();
    return (Map<Integer, Integer>)localObject1;
  }
  
  public void a(h paramh)
  {
    if (paramh != null)
    {
      d.add(paramh);
      com.estrongs.android.util.l.e("Accessor", "add ScanListener:" + d.size());
      if (e)
      {
        com.estrongs.android.util.l.e("Accessor", "call ScanListener due to scan finished!");
        paramh.a();
      }
    }
  }
  
  public void b()
  {
    e = false;
    com.estrongs.android.util.l.e("Accessor", "收到扫描开始通知");
  }
  
  public void b(h paramh)
  {
    if (paramh != null)
    {
      d.remove(paramh);
      com.estrongs.android.util.l.e("Accessor", "remove ScanListener:" + d.size());
    }
  }
  
  public void c()
  {
    com.estrongs.android.util.l.e("Accessor", "收到扫描结束通知");
    e = true;
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)localIterator.next();
      com.estrongs.android.util.l.e("Accessor", "call IScanListerner.onFinish() in thread:" + Thread.currentThread().getName());
      localh.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */