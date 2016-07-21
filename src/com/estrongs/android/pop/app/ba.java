package com.estrongs.android.pop.app;

import android.app.Activity;
import com.estrongs.a.p;
import com.estrongs.a.q;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.util.ap;
import com.estrongs.fs.a.b;
import com.estrongs.fs.b.ar;

final class ba
  extends jh
{
  ba(Activity paramActivity1, String paramString1, com.estrongs.a.a parama, String paramString2, ar paramar, Activity paramActivity2)
  {
    super(paramActivity1, paramString1, parama);
  }
  
  protected String a()
  {
    return c.getString(2131231397, new Object[] { ap.F(b.c.b) });
  }
  
  protected String a(p paramp)
  {
    if (paramp != null)
    {
      if (a == 2) {
        return "系统错误";
      }
      if (a == 3) {
        return "资源未找到";
      }
      if (a == 4) {
        return "下载超时";
      }
      if (a == 5) {
        return "下载失败";
      }
      if (a == 6) {
        return "存储空间不够";
      }
      if (a == 7) {
        return "任务已取消";
      }
      if (a == 36013) {
        return "下载任务太多，添加失败";
      }
      if (a == 36020) {
        return "无效的下载源";
      }
      if (a == 36001) {
        return "错误的参数";
      }
      if (b != null)
      {
        if ((b instanceof q)) {
          return b).a;
        }
        return b.toString();
      }
      return a;
    }
    return null;
  }
  
  protected void a(com.estrongs.a.a parama)
  {
    if ((parama instanceof ar)) {
      b = true;
    }
    super.a(parama);
  }
  
  protected String b()
  {
    return c.getString(2131231378, new Object[] { b.c.b });
  }
  
  protected void b(com.estrongs.a.a parama)
  {
    parama = ap.bB(b.c.getPath());
    b.a().a(parama);
  }
  
  public void show()
  {
    d();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */