package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.a.j;
import com.google.android.gms.ads.a.k;
import com.google.android.gms.ads.a.l;
import com.google.android.gms.ads.b;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.h;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.internal.me;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;

@me
public abstract class a
  implements com.google.android.gms.ads.a.c, com.google.android.gms.ads.a.e, k
{
  protected AdView a;
  protected h b;
  private b c;
  
  protected abstract Bundle a(Bundle paramBundle1, Bundle paramBundle2);
  
  com.google.android.gms.ads.c a(Context paramContext, String paramString)
  {
    return new com.google.android.gms.ads.c(paramContext, paramString);
  }
  
  com.google.android.gms.ads.d a(Context paramContext, com.google.android.gms.ads.a.a parama, Bundle paramBundle1, Bundle paramBundle2)
  {
    com.google.android.gms.ads.f localf = new com.google.android.gms.ads.f();
    Object localObject = parama.a();
    if (localObject != null) {
      localf.a((Date)localObject);
    }
    int i = parama.b();
    if (i != 0) {
      localf.a(i);
    }
    localObject = parama.c();
    if (localObject != null)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localf.a((String)((Iterator)localObject).next());
      }
    }
    localObject = parama.d();
    if (localObject != null) {
      localf.a((Location)localObject);
    }
    if (parama.f()) {
      localf.b(m.a().a(paramContext));
    }
    if (parama.e() != -1) {
      if (parama.e() != 1) {
        break label197;
      }
    }
    label197:
    for (boolean bool = true;; bool = false)
    {
      localf.a(bool);
      localf.a(com.google.ads.mediation.a.a.class, a(paramBundle1, paramBundle2));
      return localf.a();
    }
  }
  
  public String a(Bundle paramBundle)
  {
    return paramBundle.getString("pubid");
  }
  
  public void a()
  {
    if (a != null)
    {
      a.a();
      a = null;
    }
    if (b != null) {
      b = null;
    }
    if (c != null) {
      c = null;
    }
  }
  
  public void a(Context paramContext, com.google.android.gms.ads.a.d paramd, Bundle paramBundle1, g paramg, com.google.android.gms.ads.a.a parama, Bundle paramBundle2)
  {
    a = new AdView(paramContext);
    a.setAdSize(new g(paramg.b(), paramg.a()));
    a.setAdUnitId(a(paramBundle1));
    a.setAdListener(new d(this, paramd));
    a.a(a(paramContext, parama, paramBundle2, paramBundle1));
  }
  
  public void a(Context paramContext, com.google.android.gms.ads.a.f paramf, Bundle paramBundle1, com.google.android.gms.ads.a.a parama, Bundle paramBundle2)
  {
    b = new h(paramContext);
    b.a(a(paramBundle1));
    b.a(new e(this, paramf));
    b.a(a(paramContext, parama, paramBundle2, paramBundle1));
  }
  
  public void a(Context paramContext, l paraml, Bundle paramBundle1, j paramj, Bundle paramBundle2)
  {
    paraml = new f(this, paraml);
    com.google.android.gms.ads.c localc = a(paramContext, paramBundle1.getString("pubid")).a(paraml);
    com.google.android.gms.ads.formats.c localc1 = paramj.g();
    if (localc1 != null) {
      localc.a(localc1);
    }
    if (paramj.h()) {
      localc.a(paraml);
    }
    if (paramj.i()) {
      localc.a(paraml);
    }
    c = localc.a();
    c.a(a(paramContext, paramj, paramBundle2, paramBundle1));
  }
  
  public void b()
  {
    if (a != null) {
      a.b();
    }
  }
  
  public void c()
  {
    if (a != null) {
      a.c();
    }
  }
  
  public View d()
  {
    return a;
  }
  
  public void e()
  {
    b.a();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */