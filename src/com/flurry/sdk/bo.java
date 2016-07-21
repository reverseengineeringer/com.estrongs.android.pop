package com.flurry.sdk;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import java.util.Collections;
import java.util.List;

public abstract class bo
  implements gw, hg
{
  protected Bundle a(Context paramContext)
  {
    return c(paramContext);
  }
  
  protected bn a()
  {
    return c();
  }
  
  protected abstract gt a(Context paramContext, s params, AdCreative paramAdCreative, Bundle paramBundle);
  
  public hf a(Context paramContext, s params)
  {
    if ((paramContext == null) || (params == null)) {}
    Bundle localBundle;
    do
    {
      do
      {
        return null;
      } while (!a(paramContext, d()));
      localBundle = a(paramContext);
    } while (localBundle == null);
    return a(paramContext, params, localBundle);
  }
  
  protected abstract hf a(Context paramContext, s params, Bundle paramBundle);
  
  protected boolean a(Context paramContext, br parambr)
  {
    if ((paramContext == null) || (parambr == null)) {}
    bn localbn;
    do
    {
      return false;
      localbn = a();
    } while (localbn == null);
    return localbn.a(paramContext, parambr);
  }
  
  protected Bundle b(Context paramContext)
  {
    return c(paramContext);
  }
  
  protected bn b()
  {
    return c();
  }
  
  public gt b(Context paramContext, s params)
  {
    if ((paramContext == null) || (params == null)) {}
    Bundle localBundle;
    AdCreative localAdCreative;
    do
    {
      do
      {
        do
        {
          return null;
        } while (!b(paramContext, e()));
        localBundle = b(paramContext);
      } while (localBundle == null);
      localAdCreative = fd.a(params.l().a());
    } while (localAdCreative == null);
    return a(paramContext, params, localAdCreative, localBundle);
  }
  
  protected boolean b(Context paramContext, br parambr)
  {
    if ((paramContext == null) || (parambr == null)) {}
    bn localbn;
    do
    {
      return false;
      localbn = b();
    } while (localbn == null);
    return localbn.a(paramContext, parambr);
  }
  
  protected Bundle c(Context paramContext)
  {
    return lq.e(paramContext);
  }
  
  protected bn c()
  {
    return new bm();
  }
  
  protected br d()
  {
    return new br(f(), g(), h(), i(), j());
  }
  
  protected br e()
  {
    return new br(f(), k(), l(), m(), Collections.emptyList());
  }
  
  protected abstract String f();
  
  protected abstract List<bk> g();
  
  protected List<String> h()
  {
    return n();
  }
  
  protected List<String> i()
  {
    return o();
  }
  
  protected abstract List<ActivityInfo> j();
  
  protected abstract List<bk> k();
  
  protected List<String> l()
  {
    return n();
  }
  
  protected List<String> m()
  {
    return o();
  }
  
  protected abstract List<String> n();
  
  protected abstract List<String> o();
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */