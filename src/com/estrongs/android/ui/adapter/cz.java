package com.estrongs.android.ui.adapter;

import android.graphics.drawable.Drawable;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.theme.at;
import java.util.ArrayList;
import java.util.List;

class cz
  implements Runnable
{
  cz(cx paramcx) {}
  
  public void run()
  {
    da localda = new da(this);
    ci localci = new ci(a.a);
    localci.setTitle(2131232092);
    localci.setSelectable(false);
    a.b.a(2130838591);
    ArrayList localArrayList1 = new ArrayList();
    int i = a.b.c(2131558715);
    localArrayList1.add(g.a(a.b.a(2130838558), i));
    localArrayList1.add(g.a(a.b.a(2130838539), i));
    localArrayList1.add(g.a(a.b.a(2130838521), i));
    localArrayList1.add(g.a(a.b.a(2130838623), i));
    localArrayList1.add(g.a(a.b.a(2130838618), i));
    localArrayList1.add(g.a(a.b.a(2130838594), i));
    localArrayList1.add(g.a(a.b.a(2130838534), i));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(a.a.getString(2131232096));
    localArrayList2.add(a.a.getString(2131232097));
    localArrayList2.add(a.a.getString(2131232095));
    localArrayList2.add(a.a.getString(2131232100));
    localArrayList2.add(a.a.getString(2131232099));
    localArrayList2.add(a.a.getString(2131232094));
    localArrayList2.add(a.a.getString(2131230897) + " " + a.a.getString(2131232157));
    ArrayList localArrayList3 = new ArrayList();
    localArrayList3.add(Integer.valueOf(0));
    localArrayList3.add(Integer.valueOf(1));
    localArrayList3.add(Integer.valueOf(2));
    localArrayList3.add(Integer.valueOf(3));
    localArrayList3.add(Integer.valueOf(4));
    localArrayList3.add(Integer.valueOf(5));
    localArrayList3.add(Integer.valueOf(6));
    localci.setItems((Drawable[])localArrayList1.toArray(new Drawable[localArrayList1.size()]), (CharSequence[])localArrayList2.toArray(new String[localArrayList2.size()]), -1, new dc(this, localda, localArrayList3));
    localci.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */