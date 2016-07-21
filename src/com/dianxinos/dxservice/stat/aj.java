package com.dianxinos.dxservice.stat;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.dianxinos.DXStatService.a.a;
import com.dianxinos.dxservice.a.c;
import com.dianxinos.dxservice.a.h;

class aj
  implements Runnable
{
  aj(af paramaf, SharedPreferences paramSharedPreferences, String paramString) {}
  
  public void run()
  {
    Object localObject = a.getString("m", "");
    String str = af.a(c, (String)localObject, a.o(af.a(c)));
    if (!af.b(c, (String)localObject, str))
    {
      localObject = a.edit();
      ((SharedPreferences.Editor)localObject).putString("mn", b);
      ((SharedPreferences.Editor)localObject).putString("m", str);
      c.a((SharedPreferences.Editor)localObject);
      if (c.d) {
        Log.i("stat.HwInfoService", "Retrieved carrier info for Phone: carrier[" + str + "]");
      }
      h.a(af.a(c)).c();
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */