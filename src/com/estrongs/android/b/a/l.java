package com.estrongs.android.b.a;

import android.os.ConditionVariable;
import com.estrongs.android.util.aa;
import com.estrongs.fs.util.j;
import java.io.File;

class l
{
  static boolean a(String paramString1, String paramString2)
  {
    String str = paramString2 + ".tmp";
    Object localObject = new File(paramString2);
    if (!j.n(((File)localObject).getParent())) {}
    while ((((File)localObject).exists()) && (!((File)localObject).delete())) {
      return false;
    }
    localObject = new ConditionVariable();
    paramString2 = new m(str, paramString2, (ConditionVariable)localObject);
    paramString1 = new aa(paramString1);
    paramString1.a(str);
    paramString1.a(paramString2);
    ((ConditionVariable)localObject).close();
    paramString1.c();
    ((ConditionVariable)localObject).block();
    paramString1.h();
    return a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */