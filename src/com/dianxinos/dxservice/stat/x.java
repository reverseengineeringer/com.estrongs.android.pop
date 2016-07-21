package com.dianxinos.dxservice.stat;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.dianxinos.dxservice.a.c;
import com.dianxinos.dxservice.a.e;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import org.json.JSONObject;

public final class x
{
  private static final Long a = Long.valueOf(10000L);
  private af b;
  private final ae c;
  private final ac d;
  private final ab e;
  private final Context f;
  private Runnable g = new y(this);
  private Queue<t> h = new LinkedList();
  private Map<z, Boolean> i = new LinkedHashMap();
  
  public x(Context paramContext)
  {
    f = paramContext;
    c = new ae(f);
    d = new ac(f);
    e = new ab(f, "sk");
  }
  
  private Number a(Number paramNumber1, Number paramNumber2)
  {
    Number localNumber;
    if (paramNumber2 == null) {
      localNumber = null;
    }
    do
    {
      return localNumber;
      if ((paramNumber1 instanceof Byte)) {
        return Integer.valueOf(paramNumber1.byteValue() + paramNumber2.byteValue());
      }
      if ((paramNumber1 instanceof Short)) {
        return Integer.valueOf(paramNumber1.intValue() + paramNumber2.intValue());
      }
      if ((paramNumber1 instanceof Integer)) {
        return Long.valueOf(paramNumber1.longValue() + paramNumber2.longValue());
      }
      if ((paramNumber1 instanceof Long)) {
        return Long.valueOf(paramNumber1.longValue() + paramNumber2.longValue());
      }
      if ((paramNumber1 instanceof Float)) {
        return Double.valueOf(paramNumber1.doubleValue() + paramNumber2.doubleValue());
      }
      if ((paramNumber1 instanceof Double)) {
        return Double.valueOf(paramNumber1.doubleValue() + paramNumber2.doubleValue());
      }
      if ((paramNumber1 instanceof BigInteger)) {
        return ((BigInteger)paramNumber1).add((BigInteger)paramNumber2);
      }
      localNumber = paramNumber1;
    } while (!(paramNumber1 instanceof BigDecimal));
    return ((BigDecimal)paramNumber1).add((BigDecimal)paramNumber2);
  }
  
  private static Object a(int paramInt, String paramString)
  {
    Object localObject;
    if (10 == paramInt) {
      localObject = paramString.getBytes();
    }
    do
    {
      return localObject;
      if (9 == paramInt) {
        return new JSONObject(paramString);
      }
      if (paramInt == 0) {
        return Byte.valueOf(Byte.parseByte(paramString));
      }
      if (1 == paramInt) {
        return Short.valueOf(Short.parseShort(paramString));
      }
      if (2 == paramInt) {
        return Integer.valueOf(Integer.parseInt(paramString));
      }
      if (3 == paramInt) {
        return Long.valueOf(Long.parseLong(paramString));
      }
      if (4 == paramInt) {
        return Float.valueOf(Float.parseFloat(paramString));
      }
      if (5 == paramInt) {
        return Double.valueOf(Double.parseDouble(paramString));
      }
      if (6 == paramInt) {
        return new BigInteger(paramString);
      }
      localObject = paramString;
    } while (7 != paramInt);
    return new BigDecimal(paramString);
  }
  
  private static String a(int paramInt, Object paramObject)
  {
    if (10 == paramInt) {
      return new String((byte[])paramObject);
    }
    return paramObject.toString();
  }
  
  private boolean a(t paramt)
  {
    h.offer(paramt);
    e.b(g);
    return e.a(g);
  }
  
  private boolean a(t paramt, String paramString)
  {
    boolean bool = a(paramString, paramt);
    if (bool)
    {
      if (c.d) {
        Log.i("stat.EventDispatcher", "Push to db " + paramString + " success!");
      }
      if ("d".equals(paramString)) {
        e.a(paramt.e(), System.currentTimeMillis());
      }
      c();
    }
    while (!c.d) {
      return bool;
    }
    Log.i("stat.EventDispatcher", "Push event:" + paramt + " to " + paramString + " db failed!");
    return bool;
  }
  
  private boolean a(String paramString, t paramt)
  {
    String str1 = null;
    String str4;
    String str5;
    String str2;
    String str3;
    Object localObject3;
    Object localObject4;
    Object localObject2;
    for (;;)
    {
      try
      {
        str4 = u.a(f);
        if (str4 == null) {
          return false;
        }
        str5 = u.a();
        str2 = s.b(paramt.e(), str5);
        str3 = s.a(str5, str4);
        if (1 != paramt.d()) {
          break;
        }
        if (9 != paramt.c()) {
          break label778;
        }
        if (paramt.g() != null)
        {
          localObject3 = (JSONObject)paramt.g();
          localObject4 = new JSONObject();
          Iterator localIterator = ((JSONObject)localObject3).keys();
          localObject1 = localObject4;
          localObject2 = str1;
          if (!localIterator.hasNext()) {
            break label215;
          }
          localObject1 = (String)localIterator.next();
          ((JSONObject)localObject4).put(s.b((String)localObject1, str5), ((JSONObject)localObject3).get((String)localObject1));
          continue;
        }
        localObject3 = (JSONObject)a(paramt.c(), paramt.h());
      }
      catch (Exception paramString)
      {
        if (c.e) {
          Log.e("stat.EventDispatcher", "Failed to push the event.", paramString);
        }
        return false;
      }
    }
    label215:
    int k;
    if (3 == paramt.d()) {
      if (paramt.g() != null)
      {
        localObject2 = a(paramt.c(), paramt.g());
        localObject1 = null;
        localObject3 = c.a(paramString);
        paramString = f.getSharedPreferences(paramString, 0);
        str1 = paramString.getString("pk", null);
        k = paramString.getInt("pkv", 0);
        ((v)localObject3).a();
        if (str1 == null) {}
      }
    }
    int j;
    for (;;)
    {
      try
      {
        if (!str1.equals(str4)) {
          ((v)localObject3).a(k);
        }
        if (str1 != null)
        {
          j = k;
          if (str1.equals(str4)) {}
        }
        else
        {
          paramString = paramString.edit();
          paramString.putString("pk", str4);
          j = k + 1;
          paramString.putInt("pkv", j);
          paramString.commit();
        }
        if (1 != paramt.d()) {
          break label740;
        }
        paramString = ((v)localObject3).a(str2, paramt.i(), str3);
        if (paramString == null) {
          break label654;
        }
        if (9 != paramt.c()) {
          break label588;
        }
        paramString = (JSONObject)a(paramt.c(), paramString);
        localObject1 = (JSONObject)localObject1;
        localObject2 = ((JSONObject)localObject1).keys();
        if (!((Iterator)localObject2).hasNext()) {
          break label555;
        }
        str1 = (String)((Iterator)localObject2).next();
        localObject4 = (Number)((JSONObject)localObject1).get(str1);
        if (!paramString.has(str1)) {
          break label543;
        }
        paramString.put(str1, a((Number)paramString.get(str1), (Number)localObject4));
        continue;
        localObject2 = paramt.h();
      }
      finally
      {
        ((v)localObject3).b();
      }
      localObject1 = null;
      break;
      if (paramt.g() != null)
      {
        localObject2 = s.b(a(paramt.c(), paramt.g()), str5);
        localObject1 = null;
        break;
      }
      localObject2 = s.b(paramt.h(), str5);
      localObject1 = null;
      break;
      label543:
      paramString.put(str1, localObject4);
    }
    label555:
    paramString = a(paramt.c(), paramString);
    boolean bool = ((v)localObject3).a(str2, paramString, paramt.i(), str3);
    ((v)localObject3).b();
    return bool;
    label588:
    Object localObject1 = (Number)a(paramt.c(), paramString);
    if (paramt.g() != null) {}
    for (paramString = (Number)paramt.g();; paramString = (Number)a(paramt.c(), paramt.h()))
    {
      paramString = a((Number)localObject1, paramString);
      paramString = a(paramt.c(), paramString);
      break;
    }
    label654:
    if (9 == paramt.c()) {
      paramString = a(paramt.c(), localObject1);
    }
    label740:
    label778:
    label788:
    for (;;)
    {
      bool = ((v)localObject3).a(str2, paramt.c(), paramt.d(), paramString, paramt.i(), str3, j, paramt.f());
      ((v)localObject3).b();
      return bool;
      if (paramt.h() != null)
      {
        paramString = paramt.h();
      }
      else
      {
        paramString = a(paramt.c(), paramt.g());
        break label788;
        bool = ((v)localObject3).a(str2, paramt.c(), paramt.d(), (String)localObject2, paramt.i(), str3, j, paramt.f());
        ((v)localObject3).b();
        return bool;
        localObject1 = null;
        localObject2 = str1;
        break;
      }
    }
  }
  
  private boolean b(t paramt)
  {
    if (c.c) {
      Log.d("stat.EventDispatcher", "HandleEvent :" + paramt.toString());
    }
    if (paramt.b() == 0)
    {
      if (e.a(paramt.e()))
      {
        paramt.b(paramt.f() + 3);
        return a(paramt, "i");
      }
      return a(paramt, "d");
    }
    if (1 == paramt.b()) {
      return a(paramt, "i");
    }
    return false;
  }
  
  public void a()
  {
    if (c.c) {
      Log.d("stat.EventDispatcher", "Start!");
    }
  }
  
  public boolean a(t paramt, boolean paramBoolean)
  {
    if (c.c) {
      Log.d("stat.EventDispatcher", "DispatchEvent:event=" + paramt);
    }
    if (b == null)
    {
      b = new af(f);
      b.a();
    }
    if (paramBoolean) {
      return a(paramt);
    }
    return b(paramt);
  }
  
  public void b()
  {
    if (c.c) {
      Log.d("stat.EventDispatcher", "Shutdown!");
    }
    if (b != null) {
      b.b();
    }
  }
  
  public boolean c()
  {
    Object localObject = i.keySet().iterator();
    while (((Iterator)localObject).hasNext()) {
      e.b((Runnable)((Iterator)localObject).next());
    }
    i.clear();
    localObject = new z(this, null);
    i.put(localObject, Boolean.valueOf(true));
    return e.a((Runnable)localObject, 100L);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */