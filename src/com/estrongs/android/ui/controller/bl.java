package com.estrongs.android.ui.controller;

import android.content.Context;
import android.text.TextUtils;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.cr;
import com.estrongs.fs.h;
import java.util.List;

public class bl
{
  public static void a(Context paramContext, cr paramcr, String paramString, List<String> paramList1, List<String> paramList2)
  {
    if ((paramString == null) || ("".equals(paramString))) {}
    label889:
    label1462:
    label1465:
    for (;;)
    {
      return;
      if (ap.bl(paramString))
      {
        if (ap.cp(paramString))
        {
          paramList2.add(paramContext.getString(2131232258));
          paramList1.add("recycle://");
          paramContext = ap.ck(paramString);
          if (paramContext != null) {
            a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
          }
        }
        else
        {
          if (paramString.startsWith("/"))
          {
            paramContext = paramString.substring(1);
            paramList1.add("/");
            paramList2.add("/");
            a(paramContext, paramList1, paramList2, "/");
            return;
          }
          a(paramString, paramList1, paramList2, "");
        }
      }
      else if (ap.aJ(paramString))
      {
        paramcr = ap.k();
        String str = ap.bB(paramcr);
        paramList2.add(ap.d(str));
        paramList1.add(str);
        paramList2.add(paramContext.getString(2131231943));
        paramList1.add(paramcr);
        if (!ap.aK(paramString))
        {
          paramContext = ap.k();
          if (paramContext != null) {
            a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
          }
        }
      }
      else if (ap.aY(paramString))
      {
        paramList2.add(paramContext.getString(2131231659));
        paramList1.add("gallery://local/buckets/");
        if (!ap.aX(paramString))
        {
          if (paramcr.b() != null) {
            paramList2.add(paramcr.b().getName());
          }
          for (;;)
          {
            paramList1.add(paramString);
            return;
            paramList2.add(ap.d(paramString));
          }
        }
      }
      else if (ap.X(paramString))
      {
        paramList2.add(paramContext.getString(2131231138));
        paramList1.add("pic://");
        paramContext = paramString.substring(0, paramString.indexOf("pic://") + "pic://".length());
        if (paramContext != null) {
          a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
        }
      }
      else if (ap.aQ(paramString))
      {
        paramList2.add(paramContext.getString(2131231601));
        paramList1.add("SP://");
        if (!ap.aP(paramString))
        {
          if (paramcr.b() != null) {
            paramList2.add(paramcr.b().getName());
          }
          for (;;)
          {
            paramList1.add(paramString);
            return;
            paramList2.add(ap.d(paramString));
          }
        }
      }
      else if (ap.aG(paramString))
      {
        paramList2.add(paramContext.getString(2131231648));
        paramList1.add("net://");
        if (!ap.aZ(paramString))
        {
          paramContext = ap.au(paramString);
          if (paramContext != null)
          {
            paramList2.add(ap.as(paramContext));
            paramList1.add(paramContext);
            a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
          }
        }
      }
      else if ((ap.L(paramString)) || (ap.K(paramString)) || (ap.r(paramString)) || (ap.o(paramString)))
      {
        paramList2.add(paramContext.getString(2131231652));
        paramList1.add("ftp://");
        if (!ap.S(paramString))
        {
          paramContext = ap.i(paramString);
          if (paramContext != null)
          {
            paramList2.add(ap.a(paramContext));
            paramList1.add(paramContext);
            a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
          }
        }
      }
      else if (ap.J(paramString))
      {
        paramList2.add(paramContext.getString(2131231658));
        paramList1.add("smb://");
        if (!ap.bs(paramString))
        {
          paramContext = ap.k(paramString);
          if (paramContext != null)
          {
            paramList2.add(ap.a(paramContext));
            paramList1.add(paramContext);
            a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
          }
        }
      }
      else if (ap.bg(paramString))
      {
        paramList2.add(paramContext.getString(2131231649));
        paramList1.add("bt://");
        if (!ap.bk(paramString))
        {
          paramContext = ap.f(paramString);
          if (paramContext != null)
          {
            paramList2.add(ap.a(false, paramContext));
            paramList1.add(paramContext);
            a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
          }
        }
      }
      else
      {
        if (ap.ba(paramString))
        {
          paramContext = ap.be(paramString);
          paramList2.add(ap.d(paramContext));
          paramList1.add(paramContext);
          a(ap.bf(paramString), paramList1, paramList2, ap.be(paramString) + '*');
          return;
        }
        int i;
        if (ap.u(paramString))
        {
          paramcr = ap.a();
          i = 0;
          if (i >= paramcr.size()) {
            break label1462;
          }
          paramContext = "du://" + (String)paramcr.get(i);
          if (!paramString.startsWith(paramContext)) {}
        }
        for (;;)
        {
          if (paramContext == null) {
            break label1465;
          }
          paramList2.add(ap.d(paramContext));
          paramList1.add(paramContext);
          a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
          return;
          i += 1;
          break label889;
          if (ap.cg(paramString))
          {
            paramList2.add(paramContext.getString(2131232258));
            paramList1.add("recycle://");
            return;
          }
          if (ap.bh(paramString))
          {
            paramList2.add(paramContext.getString(2131232593));
            paramList1.add(paramString);
            return;
          }
          if (ap.bu(paramString))
          {
            paramList2.add(paramContext.getString(2131230995));
            paramList1.add("appfolder://");
            paramContext = paramString.substring(0, paramString.indexOf("appfolder://") + "appfolder://".length());
            if (paramContext == null) {
              break;
            }
            a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
            return;
          }
          if (ap.V(paramString))
          {
            paramList2.add(paramContext.getString(2131231136));
            paramList1.add("music://");
            paramContext = paramString.substring(0, paramString.indexOf("music://") + "music://".length());
            if (paramContext == null) {
              break;
            }
            a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
            return;
          }
          if (ap.Z(paramString))
          {
            paramList2.add(paramContext.getString(2131231135));
            paramList1.add("video://");
            paramContext = paramString.substring(0, paramString.indexOf("video://") + "video://".length());
            if (paramContext == null) {
              break;
            }
            a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
            return;
          }
          if (ap.ae(paramString))
          {
            paramList2.add(paramContext.getString(2131231130));
            paramList1.add("book://");
            paramContext = paramString.substring(0, paramString.indexOf("book://") + "book://".length());
            if (paramContext == null) {
              break;
            }
            a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
            return;
          }
          if (ap.ab(paramString))
          {
            paramList2.add(paramContext.getString(2131231264));
            paramList1.add("archive://");
            paramContext = ap.be(paramString);
            paramList1.add(paramContext);
            paramcr = ap.d(paramContext);
            if (!TextUtils.isEmpty(paramcr)) {
              paramList2.add(paramcr);
            }
            a(ap.bf(paramString), paramList1, paramList2, paramContext + '*');
            return;
          }
          if (!ap.aH(paramString)) {
            break;
          }
          paramContext = paramString.substring(0, paramString.indexOf("usb://") + "usb://".length());
          if (paramContext == null) {
            break;
          }
          a(paramString.substring(paramContext.length()), paramList1, paramList2, paramContext);
          return;
          paramContext = null;
        }
      }
    }
  }
  
  private static void a(String paramString1, List<String> paramList1, List<String> paramList2, String paramString2)
  {
    int i = 0;
    if ((paramString1 != null) && (paramString2 != null))
    {
      if (!paramString1.startsWith("/")) {
        break label50;
      }
      a(paramString1.substring(1), paramList1, paramList2, paramString2 + "/");
    }
    for (;;)
    {
      return;
      label50:
      String str = paramString1;
      if (paramString1.endsWith("/")) {
        str = paramString1.substring(0, paramString1.length() - 1);
      }
      if (!"".equals(str))
      {
        paramString1 = new StringBuilder(paramString2);
        paramString2 = str.split("/");
        while (i < paramString2.length)
        {
          paramString1.append(paramString2[i]);
          paramList2.add(paramString2[i]);
          paramList1.add(paramString1.toString());
          if (i != paramString2.length - 1) {
            paramString1.append("/");
          }
          i += 1;
        }
      }
    }
  }
  
  public static boolean a(cr paramcr, String paramString)
  {
    if ((ap.bl(paramString)) || (ap.aQ(paramString)) || (ap.ba(paramString)) || (ap.aJ(paramString))) {}
    while ((ap.aG(paramString)) || (ap.J(paramString)) || (ap.bg(paramString)) || (ap.L(paramString)) || (ap.K(paramString)) || (ap.r(paramString)) || (ap.o(paramString)) || (ap.u(paramString)) || (ap.cg(paramString)) || (ap.bh(paramString)) || (ap.bu(paramString)) || (ap.X(paramString)) || (ap.Z(paramString)) || (ap.ae(paramString)) || (ap.V(paramString)) || (ap.ab(paramString)) || (ap.aH(paramString))) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */