package com.estrongs.android.ui.a;

import android.graphics.drawable.Drawable;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.theme.al;
import java.util.ArrayList;
import java.util.List;

class cn
  implements Runnable
{
  cn(cl paramcl) {}
  
  public void run()
  {
    co localco = new co(this);
    cg localcg = new cg(a.a);
    localcg.setTitle(2131427814);
    localcg.setSelectable(false);
    a.b.a(2130838224);
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(a.b.a(2130838224));
    localArrayList1.add(a.b.a(2130838172));
    localArrayList1.add(a.b.a(2130838153));
    localArrayList1.add(a.b.a(2130838250));
    localArrayList1.add(a.b.a(2130838245));
    localArrayList1.add(a.b.a(2130838208));
    localArrayList1.add(a.b.a(2130838160));
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(a.a.getString(2131428224));
    localArrayList2.add(a.a.getString(2131428225));
    localArrayList2.add(a.a.getString(2131428226));
    localArrayList2.add(a.a.getString(2131428227));
    localArrayList2.add(a.a.getString(2131428228));
    localArrayList2.add(a.a.getString(2131428230));
    localArrayList2.add(a.a.getString(2131427358) + " " + a.a.getString(2131428068));
    ArrayList localArrayList3 = new ArrayList();
    localArrayList3.add(Integer.valueOf(0));
    localArrayList3.add(Integer.valueOf(1));
    localArrayList3.add(Integer.valueOf(2));
    localArrayList3.add(Integer.valueOf(3));
    localArrayList3.add(Integer.valueOf(4));
    localArrayList3.add(Integer.valueOf(5));
    localArrayList3.add(Integer.valueOf(6));
    localcg.setItems((Drawable[])localArrayList1.toArray(new Drawable[localArrayList1.size()]), (CharSequence[])localArrayList2.toArray(new String[localArrayList2.size()]), -1, new cq(this, localco, localArrayList3));
    localcg.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */