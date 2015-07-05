package com.estrongs.android.pop.view;

import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.au;
import com.estrongs.fs.h;
import com.estrongs.fs.n;
import java.util.List;

class ec
  implements au
{
  ec(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(List<h> paramList)
  {
    a.s();
    h localh = (h)paramList.get(0);
    paramList = localh;
    if (am.aL(localh.getPath()))
    {
      if ((!am.ap(localh.getPath())) && (!am.ar(localh.getPath()))) {
        break label160;
      }
      if (!localh.getPath().endsWith("/")) {
        break label127;
      }
      paramList = localh.getPath() + "mine";
      paramList = new n(paramList);
    }
    label127:
    label160:
    do
    {
      aj.a(a, a.y, paramList, a.p);
      return;
      paramList = localh.getPath() + "/" + "mine";
      break;
      paramList = localh;
    } while (!am.as(localh.getPath()));
    if (localh.getPath().endsWith("/")) {}
    for (paramList = localh.getPath() + "/pictures".substring(1);; paramList = localh.getPath() + "/pictures")
    {
      paramList = new n(paramList);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */