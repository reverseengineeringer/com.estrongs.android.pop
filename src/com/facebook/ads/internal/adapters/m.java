package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.util.Log;
import com.facebook.ads.internal.util.o;
import com.facebook.ads.internal.util.s;
import com.facebook.ads.internal.view.e;
import java.util.Collections;
import java.util.Map;

public class m
  extends b
{
  private static final String b = m.class.getSimpleName();
  private final e c;
  private l d;
  private boolean e;
  
  public m(Context paramContext, e parame, c paramc)
  {
    super(paramContext, paramc);
    c = parame;
  }
  
  private void a(Map<String, String> paramMap)
  {
    if (d == null) {}
    String str;
    do
    {
      return;
      str = d.f();
    } while (s.a(str));
    new o(paramMap).execute(new String[] { str });
  }
  
  public void a(l paraml)
  {
    d = paraml;
  }
  
  protected void b()
  {
    if (d == null) {
      return;
    }
    if ((c != null) && (!s.a(d.g())))
    {
      if (!c.b()) {
        break label59;
      }
      Log.w(b, "Webview already destroyed, cannot send impression");
    }
    for (;;)
    {
      a(Collections.singletonMap("evt", "native_imp"));
      return;
      label59:
      c.loadUrl("javascript:" + d.g());
    }
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 106	com/facebook/ads/internal/adapters/m:e	Z
    //   6: ifne +12 -> 18
    //   9: aload_0
    //   10: getfield 35	com/facebook/ads/internal/adapters/m:d	Lcom/facebook/ads/internal/adapters/l;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnonnull +6 -> 21
    //   18: aload_0
    //   19: monitorexit
    //   20: return
    //   21: aload_0
    //   22: iconst_1
    //   23: putfield 106	com/facebook/ads/internal/adapters/m:e	Z
    //   26: aload_0
    //   27: getfield 30	com/facebook/ads/internal/adapters/m:c	Lcom/facebook/ads/internal/view/e;
    //   30: ifnull -12 -> 18
    //   33: aload_0
    //   34: getfield 35	com/facebook/ads/internal/adapters/m:d	Lcom/facebook/ads/internal/adapters/l;
    //   37: invokevirtual 108	com/facebook/ads/internal/adapters/l:e	()Ljava/lang/String;
    //   40: invokestatic 45	com/facebook/ads/internal/util/s:a	(Ljava/lang/String;)Z
    //   43: ifne -25 -> 18
    //   46: aload_0
    //   47: getfield 30	com/facebook/ads/internal/adapters/m:c	Lcom/facebook/ads/internal/view/e;
    //   50: new 110	com/facebook/ads/internal/adapters/m$1
    //   53: dup
    //   54: aload_0
    //   55: invokespecial 113	com/facebook/ads/internal/adapters/m$1:<init>	(Lcom/facebook/ads/internal/adapters/m;)V
    //   58: invokevirtual 117	com/facebook/ads/internal/view/e:post	(Ljava/lang/Runnable;)Z
    //   61: pop
    //   62: goto -44 -> 18
    //   65: astore_1
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	m
    //   13	2	1	locall	l
    //   65	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	65	finally
    //   21	62	65	finally
  }
  
  public void d()
  {
    a(Collections.singletonMap("evt", "interstitial_displayed"));
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */