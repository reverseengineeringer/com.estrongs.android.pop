package com.estrongs.android.ui.dialog;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.u;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.b;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.eb;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.util.List;

public class ld
  extends ci
{
  public static void a(FileExplorerActivity paramFileExplorerActivity, cr paramcr)
  {
    Object localObject1 = paramcr.o();
    int j = ((List)localObject1).size();
    h localh;
    if (j > 0)
    {
      if (j != 1) {
        break label243;
      }
      localh = (h)((List)localObject1).get(0);
      if (!localh.getFileType().a()) {
        break label93;
      }
      localObject1 = localh.getName();
      paramcr = "all";
    }
    for (;;)
    {
      Object localObject2 = localObject1;
      if (((String)localObject1).length() > 38) {
        localObject2 = ((String)localObject1).substring(0, 38);
      }
      paramFileExplorerActivity.b(paramcr, (String)localObject2);
      return;
      label93:
      localObject2 = ap.bS(localh.getName());
      localObject1 = localObject2;
      if (bk.a((CharSequence)localObject2))
      {
        localObject1 = localObject2;
        if ((paramcr instanceof u)) {
          localObject1 = paramFileExplorerActivity.getString(2131230847);
        }
      }
      int i = bg.b(localh.getAbsolutePath());
      if ((bg.F(i)) || ((paramcr instanceof b)))
      {
        paramcr = "apk";
      }
      else if ((bg.a(i)) || ((paramcr instanceof eb)))
      {
        paramcr = "image";
      }
      else if (bg.e(i))
      {
        paramcr = "music";
      }
      else if (bg.g(i))
      {
        paramcr = "video";
      }
      else
      {
        if (!bg.j(i))
        {
          localObject2 = localObject1;
          if (!bg.P(localh.getAbsolutePath())) {}
        }
        else
        {
          paramcr = "document";
          continue;
          label243:
          localObject2 = new StringBuilder();
          i = 0;
          while (i < j - 1)
          {
            ((StringBuilder)localObject2).append(ap.bS(((h)((List)localObject1).get(i)).getName())).append(" ");
            i += 1;
          }
          ((StringBuilder)localObject2).append(ap.bS(((h)((List)localObject1).get(j - 1)).getName()));
          localObject1 = ((StringBuilder)localObject2).toString().trim();
          if ((paramcr instanceof b))
          {
            paramcr = "apk";
            continue;
          }
          if ((paramcr instanceof eb))
          {
            paramcr = "image";
            continue;
          }
          if (ap.V(paramcr.c()))
          {
            paramcr = "music";
            continue;
          }
          if (ap.Z(paramcr.c()))
          {
            paramcr = "video";
            continue;
          }
          localObject2 = localObject1;
          if (ap.ae(paramcr.c()))
          {
            paramcr = "document";
            continue;
          }
        }
        paramcr = "all";
        localObject1 = localObject2;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */