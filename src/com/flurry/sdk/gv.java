package com.flurry.sdk;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;

public class gv
{
  public static gt a(Context paramContext, s params, String paramString, gt.a parama, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramContext == null) || (params == null)) {
      paramContext = null;
    }
    label150:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return paramContext;
              if (TextUtils.isEmpty(paramString)) {
                return new gs(paramContext, params, parama, paramBoolean1);
              }
              if (!ma.g(paramString)) {
                break label150;
              }
              if ((!(params instanceof x)) || (!((x)params).B())) {
                break;
              }
              parama = gi.a(paramContext, gj.d, params, parama);
              paramString = Uri.parse(paramString);
              paramContext = parama;
            } while (params.l().m().h());
            paramContext = parama;
          } while (parama == null);
          parama.setVideoUri(paramString);
          return parama;
          gj localgj = gj.c;
          if (params.l().q()) {
            localgj = gj.b;
          }
          params = gi.a(paramContext, localgj, params, parama);
          paramString = Uri.parse(paramString);
          paramContext = params;
        } while (params == null);
        params.setVideoUri(paramString);
        return params;
        if ((!(params instanceof x)) || (!((x)params).B()) || (!paramString.startsWith("file:"))) {
          break;
        }
        parama = gi.a(paramContext, gj.d, params, parama);
        paramString = Uri.parse(paramString);
        paramContext = parama;
      } while (params.l().m().h());
      paramContext = parama;
    } while (parama == null);
    parama.setVideoUri(paramString);
    return parama;
    if (paramBoolean2) {
      return new gy(paramContext, paramString, params, parama, paramBoolean1);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */