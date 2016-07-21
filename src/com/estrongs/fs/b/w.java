package com.estrongs.fs.b;

import com.estrongs.a.a;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.text.Collator;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class w
  extends a
{
  LinkedList<String> a = new LinkedList();
  Collator b = Collator.getInstance();
  private d c;
  private int d;
  private List<String> e;
  private boolean f;
  
  public w(d paramd, int paramInt, List<String> paramList, boolean paramBoolean)
  {
    c = paramd;
    d = paramInt;
    e = paramList;
    f = paramBoolean;
  }
  
  private void a(List<String> paramList)
  {
    try
    {
      LinkedList localLinkedList = new LinkedList();
      int i = 0;
      for (;;)
      {
        if (i < paramList.size())
        {
          if (taskStopped()) {
            return;
          }
          localLinkedList.clear();
          if (c.h((String)paramList.get(i)))
          {
            Object localObject1 = c.a((String)paramList.get(i), true);
            if (localObject1 != null)
            {
              localObject1 = ((List)localObject1).iterator();
              while (((Iterator)localObject1).hasNext())
              {
                Object localObject2 = (h)((Iterator)localObject1).next();
                String str = ((h)localObject2).getAbsolutePath();
                if (((h)localObject2).getFileType().a())
                {
                  localObject2 = ap.d(str);
                  if ((!((String)localObject2).equals(".")) && (!((String)localObject2).equals("..")) && (f)) {
                    localLinkedList.add(str);
                  }
                }
                else if ((d == 0) && (a(str)))
                {
                  a.add(str);
                }
                else if ((d == 1) && (bg.h(str)))
                {
                  a.add(str);
                }
              }
            }
          }
          else
          {
            if ((d == 0) && (a((String)paramList.get(i)))) {
              a.add(paramList.get(i));
            }
            while (!taskStopped())
            {
              if (localLinkedList.size() <= 0) {
                break label337;
              }
              a(localLinkedList);
              break label337;
              if ((d == 1) && (bg.h((String)paramList.get(i)))) {
                a.add(paramList.get(i));
              }
            }
          }
        }
        else
        {
          return;
        }
        label337:
        i += 1;
      }
      return;
    }
    catch (Exception paramList) {}
  }
  
  public static boolean a(String paramString)
  {
    return (bg.g(paramString)) && ((ap.bl(paramString)) || ((ap.bm(paramString)) && (!paramString.endsWith(".m3u"))));
  }
  
  public List<String> a()
  {
    return a;
  }
  
  public boolean task()
  {
    a(e);
    Collections.sort(a, new x(this));
    m.a().e();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */