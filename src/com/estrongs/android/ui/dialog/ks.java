package com.estrongs.android.ui.dialog;

import android.content.Context;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.u;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import com.estrongs.android.view.cd;
import com.estrongs.fs.h;
import com.estrongs.fs.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ks
  extends cg
{
  private kv a;
  
  public ks(Context paramContext, String paramString, List<String> paramList)
  {
    super(paramContext);
    a(paramContext, paramString, paramList, null, null);
  }
  
  public ks(Context paramContext, String paramString, List<String> paramList1, List<String> paramList2, List<String> paramList3)
  {
    super(paramContext);
    a(paramContext, paramString, paramList1, paramList2, paramList3);
  }
  
  public ks(Context paramContext, List<String> paramList1, List<String> paramList2)
  {
    super(paramContext);
    a(paramContext, paramList1, paramList2, null, null);
  }
  
  public static ks a(FileExplorerActivity paramFileExplorerActivity, aw paramaw)
  {
    int i = 0;
    Object localObject1 = null;
    ArrayList localArrayList = new ArrayList();
    Object localObject2 = paramaw.w();
    int j = ((List)localObject2).size();
    if (j > 0)
    {
      if (j != 1) {
        break label497;
      }
      localObject2 = (h)((List)localObject2).get(0);
      localObject1 = new ArrayList();
      if (!((h)localObject2).getFileType().a()) {
        break label180;
      }
      localArrayList.add(((h)localObject2).getName());
      ((List)localObject1).add("all");
      localArrayList.add(paramFileExplorerActivity.getString(2131427427) + " " + ((h)localObject2).getName());
      ((List)localObject1).add("all");
    }
    for (;;)
    {
      paramaw = new ks(paramFileExplorerActivity, (List)localObject1, localArrayList);
      paramaw.a(new ku(paramFileExplorerActivity));
      localObject1 = paramaw;
      return (ks)localObject1;
      label180:
      localObject3 = am.bB(((h)localObject2).getName());
      if ((bd.a((CharSequence)localObject3)) && ((paramaw instanceof u))) {
        localArrayList.add(paramFileExplorerActivity.getString(2131427359));
      }
      for (;;)
      {
        ((List)localObject1).add("all");
        i = bc.b(((h)localObject2).getAbsolutePath());
        if ((!bc.C(i)) && (!(paramaw instanceof com.estrongs.android.view.a))) {
          break label292;
        }
        localArrayList.add(localObject3);
        ((List)localObject1).add("apk");
        break;
        localArrayList.add(localObject3);
      }
      label292:
      if ((bc.a(i)) || ((paramaw instanceof cd)))
      {
        localArrayList.add(localObject3);
        ((List)localObject1).add("image");
        paramaw = com.estrongs.android.ui.d.a.a(paramFileExplorerActivity, (h)localObject2, false);
        if ((paramaw != null) && (paramaw.length() > 0))
        {
          localArrayList.add(paramaw + " " + paramFileExplorerActivity.getString(2131427421));
          ((List)localObject1).add("image");
        }
      }
      else if (bc.e(i))
      {
        localArrayList.add(localObject3);
        ((List)localObject1).add("music");
      }
      else if (bc.g(i))
      {
        localArrayList.add(localObject3);
        ((List)localObject1).add("video");
      }
      else if ((bc.j(i)) || (bc.P(((h)localObject2).getAbsolutePath())))
      {
        localArrayList.add(localObject3);
        ((List)localObject1).add("document");
      }
    }
    label497:
    localObject1 = new ArrayList();
    Object localObject3 = new StringBuilder();
    while (i < j - 1)
    {
      ((StringBuilder)localObject3).append(am.bB(((h)((List)localObject2).get(i)).getName())).append(" ");
      i += 1;
    }
    ((StringBuilder)localObject3).append(am.bB(((h)((List)localObject2).get(j - 1)).getName()));
    localArrayList.add(((StringBuilder)localObject3).toString());
    ((List)localObject1).add("all");
    if ((paramaw instanceof com.estrongs.android.view.a))
    {
      localArrayList.add(((StringBuilder)localObject3).toString());
      ((List)localObject1).add("apk");
    }
    for (;;)
    {
      paramaw = new ks(paramFileExplorerActivity, (List)localObject1, localArrayList);
      break;
      if ((paramaw instanceof cd))
      {
        localArrayList.add(((StringBuilder)localObject3).toString());
        ((List)localObject1).add("image");
      }
      else if (am.S(paramaw.c()))
      {
        localArrayList.add(((StringBuilder)localObject3).toString());
        ((List)localObject1).add("music");
      }
      else if (am.U(paramaw.c()))
      {
        localArrayList.add(((StringBuilder)localObject3).toString());
        ((List)localObject1).add("video");
      }
      else if (am.V(paramaw.c()))
      {
        localArrayList.add(((StringBuilder)localObject3).toString());
        ((List)localObject1).add("document");
      }
    }
  }
  
  private void a(Context paramContext, String paramString, List<String> paramList1, List<String> paramList2, List<String> paramList3)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramList1 != null)
    {
      int i = 0;
      while (i < paramList1.size())
      {
        localArrayList.add(paramString);
        i += 1;
      }
    }
    a(paramContext, localArrayList, paramList1, paramList2, paramList3);
  }
  
  private void a(Context paramContext, List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4)
  {
    int j = 0;
    setTitle(2131428426);
    setSelectable(false);
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramList2.size())
    {
      paramContext = (String)paramList2.get(i);
      if (paramContext == null) {
        localArrayList.add("");
      }
      for (;;)
      {
        i += 1;
        break;
        if (paramContext.length() > 38) {
          localArrayList.add(paramContext.substring(0, 38));
        } else {
          localArrayList.add(paramContext);
        }
      }
    }
    paramList2 = new ArrayList();
    if (paramList4 != null)
    {
      i = 0;
      if (i < paramList4.size())
      {
        paramContext = (String)paramList4.get(i);
        if (paramContext == null) {
          paramList2.add("");
        }
        for (;;)
        {
          i += 1;
          break;
          if (paramContext.length() > 38) {
            paramList2.add(paramContext.substring(0, 38));
          } else {
            paramList2.add(paramContext);
          }
        }
      }
    }
    else
    {
      paramList2.addAll(localArrayList);
    }
    paramList4 = new HashMap();
    paramList4.put("apk", getString(2131428427));
    paramList4.put("image", getString(2131428429));
    paramList4.put("music", getString(2131428428));
    paramList4.put("video", getString(2131428430));
    paramList4.put("document", getString(2131428431));
    paramList4.put("all", getString(2131427360));
    if (localArrayList.size() > 0)
    {
      String[] arrayOfString = new String[localArrayList.size()];
      i = j;
      if (i < localArrayList.size())
      {
        if ((paramList3 != null) && (i < paramList3.size())) {
          if (paramList3.get(i) == null)
          {
            paramContext = "";
            label395:
            arrayOfString[i] = paramContext;
          }
        }
        for (;;)
        {
          i += 1;
          break;
          paramContext = (String)paramList3.get(i);
          break label395;
          arrayOfString[i] = ((String)paramList4.get(paramList1.get(i)) + " \"" + (String)localArrayList.get(i) + "\"");
        }
      }
      setItems(arrayOfString, -1, new kt(this, paramList2, paramList1, localArrayList));
    }
  }
  
  public void a(kv paramkv)
  {
    a = paramkv;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */