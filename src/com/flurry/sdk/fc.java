package com.flurry.sdk;

public class fc
{
  private static final String a = fc.class.getSimpleName();
  
  public static void a(s params)
  {
    if (params == null) {
      return;
    }
    kg.a(3, a, "Firing onFetched, adObject=" + params);
    d locald = new d();
    a = params;
    b = d.a.a;
    locald.b();
  }
  
  public static void a(s params, ba paramba)
  {
    if ((params == null) || (paramba == null)) {
      return;
    }
    kg.a(3, a, "Firing onFetchFailed, adObject=" + params + ", errorCode=" + paramba);
    d locald = new d();
    a = params;
    b = d.a.b;
    c = paramba;
    locald.b();
  }
  
  public static void b(s params)
  {
    if (params == null) {
      return;
    }
    kg.a(3, a, "Firing onRendered, adObject=" + params);
    d locald = new d();
    a = params;
    b = d.a.c;
    locald.b();
  }
  
  public static void b(s params, ba paramba)
  {
    if ((params == null) || (paramba == null)) {
      return;
    }
    kg.a(3, a, "Firing onRenderFailed, adObject=" + params + ", errorCode=" + paramba);
    d locald = new d();
    a = params;
    b = d.a.d;
    c = paramba;
    locald.b();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */