package com.estrongs.android.pop.view;

import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.util.ap;
import com.estrongs.android.widget.av;
import com.estrongs.fs.h;
import com.estrongs.fs.x;
import java.util.List;

class ca
  implements av
{
  ca(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(List<h> paramList)
  {
    a.B();
    h localh = (h)paramList.get(0);
    paramList = localh;
    if (ap.aV(localh.getPath()))
    {
      if ((!ap.az(localh.getPath())) && (!ap.aB(localh.getPath()))) {
        break label160;
      }
      if (!localh.getPath().endsWith("/")) {
        break label127;
      }
      paramList = localh.getPath() + "mine";
      paramList = new x(paramList);
    }
    label127:
    label160:
    do
    {
      ao.a(a, a.x, paramList, a.n);
      return;
      paramList = localh.getPath() + "/" + "mine";
      break;
      paramList = localh;
    } while (!ap.aC(localh.getPath()));
    if (localh.getPath().endsWith("/")) {}
    for (paramList = localh.getPath() + "/pictures".substring(1);; paramList = localh.getPath() + "/pictures")
    {
      paramList = new x(paramList);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */