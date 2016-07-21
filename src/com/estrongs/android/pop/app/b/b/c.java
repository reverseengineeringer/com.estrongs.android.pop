package com.estrongs.android.pop.app.b.b;

import com.estrongs.android.util.l;
import com.estrongs.fs.h;
import java.io.File;
import java.util.HashMap;

public class c
  implements a
{
  public void a(HashMap<Long, h> paramHashMap, long paramLong)
  {
    Object localObject2 = com.estrongs.android.pop.b.b();
    Object localObject1 = localObject2;
    if (((String)localObject2).endsWith("/")) {
      localObject1 = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);
    }
    localObject1 = (String)localObject1 + "/tencent/mobileqq";
    localObject2 = new File((String)localObject1);
    if ((!((File)localObject2).exists()) || (!((File)localObject2).isDirectory())) {
      return;
    }
    localObject2 = new b[8];
    localObject2[0] = new b((String)localObject1 + "/log", -2);
    localObject2[1] = new b((String)localObject1 + "/data", -2);
    localObject2[2] = new b((String)localObject1 + "/photo", -2);
    localObject2[3] = new b((String)localObject1 + "/funcall", -2);
    localObject2[4] = new b((String)localObject1 + "/thumb", -2);
    localObject2[5] = new b((String)localObject1 + "/webviewcheck", -2);
    localObject2[6] = new b((String)localObject1 + "/front_info", -2);
    localObject2[7] = new b((String)localObject1 + "/head/_hd", 1);
    long l = System.currentTimeMillis();
    int j = localObject2.length;
    int i = 0;
    while (i < j)
    {
      localObject2[i].a(paramHashMap, paramLong);
      i += 1;
    }
    l.b("EEE", "scan qq takes:" + (System.currentTimeMillis() - l) + "ms");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */