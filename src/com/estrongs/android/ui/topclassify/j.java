package com.estrongs.android.ui.topclassify;

import android.os.Handler;
import com.estrongs.android.pop.ad;
import com.estrongs.android.scanner.a;
import java.util.HashMap;
import java.util.Map;

class j
  extends Thread
{
  j(f paramf, int paramInt) {}
  
  public void run()
  {
    Object localObject = new HashMap();
    ((Map)localObject).put(Integer.valueOf(20165), Long.valueOf(f.a(b, 1)));
    ((Map)localObject).put(Integer.valueOf(5), Long.valueOf(f.a(b, 2)));
    ((Map)localObject).put(Integer.valueOf(7), Long.valueOf(f.a(b, 3)));
    ((Map)localObject).put(Integer.valueOf(2), Long.valueOf(f.a(b, 6)));
    ((Map)localObject).put(Integer.valueOf(3), Long.valueOf(f.a(b, 7)));
    ((Map)localObject).put(Integer.valueOf(4), Long.valueOf(f.a(b, 5)));
    ((Map)localObject).put(Integer.valueOf(1), Long.valueOf(f.a(b, 9)));
    localObject = a.a().a((Map)localObject, ad.a(f.c(b)).bo());
    f.a(b, new HashMap());
    k localk = new k(b);
    b = 2;
    c = 1;
    if (((Map)localObject).get(Integer.valueOf(20165)) == null)
    {
      i = 0;
      a = i;
      f.b(b).put(Integer.valueOf(1), localk);
      localk = new k(b);
      b = 4;
      c = 2;
      if (((Map)localObject).get(Integer.valueOf(5)) != null) {
        break label716;
      }
      i = 0;
      label303:
      a = i;
      f.b(b).put(Integer.valueOf(2), localk);
      localk = new k(b);
      b = 4;
      c = 3;
      if (((Map)localObject).get(Integer.valueOf(7)) != null) {
        break label736;
      }
      i = 0;
      label364:
      a = i;
      f.b(b).put(Integer.valueOf(3), localk);
      localk = new k(b);
      b = 4;
      c = 6;
      if (((Map)localObject).get(Integer.valueOf(2)) != null) {
        break label757;
      }
      i = 0;
      label425:
      a = i;
      f.b(b).put(Integer.valueOf(6), localk);
      localk = new k(b);
      b = 4;
      c = 7;
      if (((Map)localObject).get(Integer.valueOf(3)) != null) {
        break label777;
      }
      i = 0;
      label487:
      a = i;
      f.b(b).put(Integer.valueOf(7), localk);
      localk = new k(b);
      b = 4;
      c = 5;
      if (((Map)localObject).get(Integer.valueOf(4)) != null) {
        break label797;
      }
      i = 0;
      label548:
      a = i;
      f.b(b).put(Integer.valueOf(5), localk);
      localk = new k(b);
      b = 4;
      c = 9;
      if (((Map)localObject).get(Integer.valueOf(1)) != null) {
        break label817;
      }
    }
    label716:
    label736:
    label757:
    label777:
    label797:
    label817:
    for (int i = 0;; i = ((Integer)((Map)localObject).get(Integer.valueOf(1))).intValue())
    {
      a = i;
      f.b(b).put(Integer.valueOf(9), localk);
      localObject = new k(b);
      b = 4;
      c = 4;
      a = a;
      f.b(b).put(Integer.valueOf(4), localObject);
      f.d(b).sendEmptyMessage(0);
      return;
      i = ((Integer)((Map)localObject).get(Integer.valueOf(20165))).intValue();
      break;
      i = ((Integer)((Map)localObject).get(Integer.valueOf(5))).intValue();
      break label303;
      i = ((Integer)((Map)localObject).get(Integer.valueOf(7))).intValue();
      break label364;
      i = ((Integer)((Map)localObject).get(Integer.valueOf(2))).intValue();
      break label425;
      i = ((Integer)((Map)localObject).get(Integer.valueOf(3))).intValue();
      break label487;
      i = ((Integer)((Map)localObject).get(Integer.valueOf(4))).intValue();
      break label548;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */