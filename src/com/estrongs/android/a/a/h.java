package com.estrongs.android.a.a;

import com.estrongs.android.a.ai;
import com.estrongs.android.a.ak;
import com.estrongs.android.a.b.i;
import com.estrongs.android.a.b.q;
import java.util.concurrent.ConcurrentHashMap;

public class h
  extends e
{
  private final ConcurrentHashMap<String, i> a;
  
  public h(ConcurrentHashMap<String, i> paramConcurrentHashMap)
  {
    a = paramConcurrentHashMap;
  }
  
  protected q a(ai paramai)
  {
    Object localObject = (ak)paramai;
    paramai = (i)a.get(((ak)localObject).a());
    if (paramai != null) {
      return paramai;
    }
    paramai = new i(a, ((ak)localObject).a(), 0, 0, 0L);
    localObject = (i)a.putIfAbsent(((ak)localObject).a(), paramai);
    if (localObject == null) {}
    for (;;)
    {
      return paramai;
      paramai = (ai)localObject;
    }
  }
  
  protected boolean b(ai paramai)
  {
    return (paramai instanceof ak);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */