package com.estrongs.android.pop.app.b.b;

import com.estrongs.android.util.l;
import com.estrongs.fs.h;
import java.io.File;
import java.util.HashMap;

public class d
  implements a
{
  public void a(HashMap<Long, h> paramHashMap, long paramLong)
  {
    Object localObject2 = com.estrongs.android.pop.b.b();
    Object localObject1 = localObject2;
    if (((String)localObject2).endsWith("/")) {
      localObject1 = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);
    }
    localObject1 = (String)localObject1 + "/tencent/micromsg";
    localObject2 = new File((String)localObject1);
    if ((!((File)localObject2).exists()) || (!((File)localObject2).isDirectory())) {}
    label531:
    for (;;)
    {
      return;
      localObject2 = ((File)localObject2).list();
      if (localObject2 != null)
      {
        int j = localObject2.length;
        int i = 0;
        if (i < j)
        {
          String str = localObject2[i];
          if ((str.length() >= 16) && (str.matches("[a-f0-9]+"))) {
            localObject1 = (String)localObject1 + "/" + str;
          }
        }
        for (i = 1;; i = 0)
        {
          if (i == 0) {
            break label531;
          }
          localObject2 = new b[8];
          localObject2[0] = new b((String)localObject1 + "/video", -2);
          localObject2[1] = new b((String)localObject1 + "/package", -2);
          localObject2[2] = new b((String)localObject1 + "/music", 2);
          localObject2[3] = new b((String)localObject1 + "/openapi", -2);
          localObject2[4] = new b((String)localObject1 + "/favorite/web", 1);
          localObject2[5] = new b((String)localObject1 + "/favorite/voice", -2);
          localObject2[6] = new b((String)localObject1 + "/favorite/music", -2);
          localObject2[7] = new b((String)localObject1 + "/image", 1, false);
          long l = System.currentTimeMillis();
          j = localObject2.length;
          i = 0;
          for (;;)
          {
            if (i < j)
            {
              localObject2[i].a(paramHashMap, paramLong);
              i += 1;
              continue;
              i += 1;
              break;
            }
          }
          l.b("EEE", "scan weixin takes:" + (System.currentTimeMillis() - l) + "ms");
          return;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */