package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@me
public final class fc
  implements fq
{
  private final fd a;
  
  public fc(fd paramfd)
  {
    a = paramfd;
  }
  
  public void a(qa paramqa, Map<String, String> paramMap)
  {
    paramqa = (String)paramMap.get("name");
    if (paramqa == null)
    {
      b.e("App event with no name parameter.");
      return;
    }
    a.a(paramqa, (String)paramMap.get("info"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */