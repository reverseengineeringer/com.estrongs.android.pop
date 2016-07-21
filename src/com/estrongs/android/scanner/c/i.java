package com.estrongs.android.scanner.c;

import android.util.Pair;
import com.estrongs.android.scanner.a.a;
import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.a.f;
import com.estrongs.android.scanner.d.m;
import com.estrongs.android.scanner.d.q;
import com.estrongs.android.scanner.x;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class i
  implements g
{
  private final List<String> a = x.a();
  private final com.estrongs.android.scanner.b.b b = com.estrongs.android.scanner.b.b.a();
  private final m c = new m();
  private final Map<String, Pair<String, String>> d = new ConcurrentHashMap();
  
  public c a(String paramString1, String paramString2, int paramInt)
  {
    return null;
  }
  
  public d a(String paramString1, String paramString2)
  {
    return null;
  }
  
  public void a(a parama)
  {
    int i = parama.c();
    String str = parama.d();
    l.e("PrepareHandler", "handleExtra：" + str);
    Object localObject;
    if ((i == 15) || (i == 16))
    {
      if (b.a(str))
      {
        l.e("PrepareHandler", "此目录不算做日志目录：" + str);
        return;
      }
      localObject = b.c(str);
      if (localObject != null)
      {
        l.e("PrepareHandler", "此目录已经按照logName设置，无需做任何修改：" + (String)localObject);
        return;
      }
    }
    if (i == 13) {
      b.b();
    }
    for (;;)
    {
      localObject = c.f(str);
      if ((localObject == null) || (((List)localObject).isEmpty())) {
        l.e("PrepareHandler", "handleExtra->pids为空:" + str);
      }
      parama.a((List)localObject);
      return;
      if (i == 14)
      {
        b.b();
        localObject = b.c(str);
        if (localObject != null)
        {
          parama.a((String)localObject);
          parama.a(true);
        }
        else
        {
          localObject = b.d(str);
          if (localObject != null)
          {
            parama.a((String)localObject);
            if (!b.a(str)) {
              parama.a(true);
            }
          }
        }
      }
    }
  }
  
  public void a(f paramf)
  {
    boolean bool2 = false;
    if (paramf.e())
    {
      d.clear();
      return;
    }
    Object localObject2 = paramf.d();
    q localq = c.e((String)localObject2);
    paramf.a(localq.a());
    boolean bool1 = localq.b();
    boolean bool3 = a.contains(localObject2);
    Object localObject1 = (Pair)d.get(localObject2);
    String str;
    if (localObject1 == null)
    {
      str = null;
      if (localObject1 != null) {
        break label299;
      }
      localObject1 = null;
      label96:
      if (bool3) {
        break label384;
      }
      if (str != null) {
        break label381;
      }
      str = b.c((String)localObject2);
      label117:
      if (str != null) {
        break label378;
      }
      localObject1 = b.d((String)localObject2);
      label133:
      if (bool1) {
        break label327;
      }
      if (localObject1 == null) {
        break label317;
      }
      if (b.a((String)localObject2)) {
        break label312;
      }
      bool1 = true;
      label156:
      if (localObject1 == null) {
        break label372;
      }
      bool1 = bool2;
      if (!b.a((String)localObject2)) {
        bool1 = true;
      }
      paramf.b(true);
      d.put(localObject2, new Pair(str, localObject1));
      paramf.b(true);
      paramf.a((String)localObject1);
    }
    label299:
    label312:
    label317:
    label327:
    label370:
    label372:
    label375:
    label378:
    label381:
    label384:
    for (;;)
    {
      paramf = paramf.b().iterator();
      for (;;)
      {
        if (!paramf.hasNext()) {
          break label370;
        }
        localObject2 = (d)paramf.next();
        ((d)localObject2).a(2);
        ((d)localObject2).c(localq.a());
        ((d)localObject2).a(bool1 | bool3);
        if (str != null)
        {
          ((d)localObject2).b(str);
          continue;
          str = (String)first;
          break;
          localObject1 = (String)second;
          break label96;
          bool1 = false;
          break label156;
          if (str == null) {
            break label375;
          }
          bool1 = true;
          break label156;
          if ((localObject1 != null) || (str != null)) {
            break label375;
          }
          bool1 = false;
          break label156;
        }
        if (localObject1 != null) {
          ((d)localObject2).b((String)localObject1);
        } else if (bool3) {
          ((d)localObject2).b("SDCards");
        }
      }
      break;
      continue;
      break label156;
      break label133;
      break label117;
    }
  }
  
  public void a(com.estrongs.android.scanner.a.g paramg)
  {
    boolean bool2 = false;
    int i = 1;
    if (paramg.e()) {
      d.clear();
    }
    String str1;
    String str2;
    q localq;
    c localc;
    do
    {
      return;
      str1 = paramg.d();
      str2 = ap.bB(str1);
      localq = c.e(str2);
      localc = paramg.a();
      if (!(localc instanceof com.estrongs.android.scanner.a.b)) {
        break;
      }
    } while (paramg.c() == 3);
    if (paramg.c() == 1) {}
    boolean bool1 = localq.b();
    boolean bool3 = a.contains(str2);
    Object localObject1 = (Pair)d.get(str2);
    Object localObject2;
    if (localObject1 == null)
    {
      localObject2 = null;
      label120:
      if (localObject1 != null) {
        break label341;
      }
      localObject1 = null;
      label128:
      if (bool3) {
        break label433;
      }
      if (localObject2 != null) {
        break label430;
      }
      localObject2 = b.c(str1);
      label149:
      if (localObject2 != null) {
        break label427;
      }
      localObject1 = b.d(str1);
      label165:
      if (bool1) {
        break label371;
      }
      if (localObject1 == null) {
        break label360;
      }
      if (b.a(str1)) {
        break label354;
      }
      bool1 = true;
      label190:
      if (localObject1 == null) {
        break label418;
      }
      bool1 = bool2;
      if (!b.a(str1)) {
        bool1 = true;
      }
      paramg.b(true);
      d.put(str2, new Pair(localObject2, localObject1));
      paramg = (com.estrongs.android.scanner.a.g)localObject2;
    }
    for (;;)
    {
      localObject2 = ap.d(str1);
      int j = localq.c();
      if (((String)localObject2).startsWith(".")) {
        if (j != 3) {}
      }
      for (i = 101;; i = j)
      {
        localc.a(i);
        localc.a(bool1 | bool3);
        if (!(localc instanceof d)) {
          break;
        }
        localObject2 = (d)localc;
        ((d)localObject2).c(localq.a());
        if (paramg != null)
        {
          ((d)localObject2).b(paramg);
          return;
          localObject2 = (String)first;
          break label120;
          label341:
          localObject1 = (String)second;
          break label128;
          label354:
          bool1 = false;
          break label190;
          label360:
          if (localObject2 == null) {
            break label424;
          }
          bool1 = true;
          break label190;
          label371:
          if ((localObject1 != null) || (localObject2 != null)) {
            break label424;
          }
          bool1 = false;
          break label190;
        }
        if (localObject1 != null)
        {
          ((d)localObject2).b((String)localObject1);
          return;
        }
        if (!bool3) {
          break;
        }
        ((d)localObject2).b("SDCards");
        return;
      }
      label418:
      paramg = (com.estrongs.android.scanner.a.g)localObject2;
      continue;
      label424:
      break label190;
      label427:
      break label165;
      label430:
      break label149;
      label433:
      paramg = (com.estrongs.android.scanner.a.g)localObject2;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    b.d();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.c.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */