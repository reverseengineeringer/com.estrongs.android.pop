package com.estrongs.fs.b;

import com.estrongs.a.a;
import com.estrongs.a.a.f;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.h;
import java.util.Iterator;
import java.util.List;

final class ai
  implements p
{
  ai(p paramp, FileExplorerActivity paramFileExplorerActivity, List paramList) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if ((paramInt2 != 4) || (!(parama instanceof ag))) {}
    f localf;
    String str;
    do
    {
      return;
      if (a != null) {
        a.a(parama, paramInt1, paramInt2);
      }
      localf = (f)parama.getDecisionData(f.class);
      str = c;
    } while (str == null);
    Object localObject1 = ((ag)parama).c();
    parama = new StringBuilder();
    parama.append("<html><body>");
    parama.append(b.getString(2131231624));
    localObject1 = ((List)localObject1).iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      parama.append((String)localObject2 + ";<br></br>");
    }
    parama.append(b.getString(2131231625));
    localObject1 = c.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (h)((Iterator)localObject1).next();
      parama.append(((h)localObject2).getAbsolutePath() + ";<br></br>");
    }
    parama.append(b.getString(2131231343));
    parama.append(a);
    parama.append("<br></br><br></br>Thanks, <br></br><br></br>ES Support Team<br></br>");
    parama.append("</body></html>");
    b.runOnUiThread(new aj(this, str, parama));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */