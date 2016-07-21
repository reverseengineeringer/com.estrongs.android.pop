package com.estrongs.android.ui.e;

import android.app.Activity;
import android.widget.LinearLayout;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.a.a;
import com.estrongs.fs.h;
import java.util.List;
import java.util.Map;

public class cq
  extends f
{
  private FileExplorerActivity k;
  private cr l;
  private boolean m = false;
  
  public cq(Activity paramActivity, boolean paramBoolean1, LinearLayout paramLinearLayout, boolean paramBoolean2)
  {
    super(paramActivity, paramBoolean1, paramBoolean2);
    k();
  }
  
  private String[] a(cp paramcp)
  {
    String[] arrayOfString = l.a(paramcp);
    if ((N == 0) && (arrayOfString.length > 5)) {
      return new String[] { arrayOfString[0], arrayOfString[1], arrayOfString[2], arrayOfString[3], "extra" };
    }
    return arrayOfString;
  }
  
  private void m()
  {
    l.d();
  }
  
  public void a(String paramString, List<h> paramList)
  {
    l.a(paramString, paramList);
    paramString = new cp(paramString, paramList);
    paramList = a(paramString);
    if (paramList != null) {
      a(paramList);
    }
    if (N == 0) {
      b(paramList);
    }
    do
    {
      do
      {
        return;
        if (N != 1) {
          break;
        }
      } while ((!P) || ((!aj) && (!ai)));
      b(new String[] { "extra" });
      return;
    } while ((O) || (!Y) || (q) || ((!aj) && (!ai)));
    b(new String[] { "extra" });
  }
  
  protected void h()
  {
    if ((b instanceof FileExplorerActivity))
    {
      k = ((FileExplorerActivity)b);
      l = new cr(k);
      l.e();
      return;
    }
    throw new IllegalArgumentException("Need FileExplorerActivity as the first argument");
  }
  
  protected Map<String, a> i()
  {
    return l.c();
  }
  
  protected void k()
  {
    m();
  }
  
  public void l()
  {
    a(k.P(), null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */