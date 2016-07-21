package com.estrongs.android.scanner;

import com.estrongs.android.scanner.a.a;
import com.estrongs.android.scanner.b.b;
import java.io.File;
import java.util.Iterator;
import java.util.List;

class n
  implements Runnable
{
  n(l paraml, String paramString1, String paramString2) {}
  
  public void run()
  {
    com.estrongs.android.util.l.e("Cataloger", "detachAppFolder:" + a + ";" + b);
    b.a().c();
    Iterator localIterator = x.a().iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = (String)localIterator.next();
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append((String)localObject1);
      if (a.startsWith("/")) {
        ((StringBuilder)localObject2).deleteCharAt(((StringBuilder)localObject2).length() - 1);
      }
      ((StringBuilder)localObject2).append(a).append('/');
      localObject1 = ((StringBuilder)localObject2).toString();
      localObject2 = new File((String)localObject1);
      if ((!((File)localObject2).exists()) || (!((File)localObject2).isDirectory()))
      {
        com.estrongs.android.util.l.e("Cataloger", "attachAppFolder path:" + (String)localObject1 + "; is not exist!");
      }
      else
      {
        localObject1 = new a(16, (String)localObject1, b);
        l.a(c, (a)localObject1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */