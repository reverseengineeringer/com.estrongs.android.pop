package com.estrongs.android.ui.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.dd;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bc;
import com.estrongs.fs.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class g
  extends BaseExpandableListAdapter
{
  private Context a;
  private Handler b;
  private ArrayList<j> c;
  private Drawable d;
  private Drawable e;
  private Map<String, Integer> f = null;
  private Map<String, String> g = null;
  private List<String> h;
  private int i = 3;
  
  public g(Context paramContext, Handler paramHandler, Map<String, String> paramMap, Map<String, Integer> paramMap1)
  {
    a = paramContext;
    b = paramHandler;
    e = at.a(a).a(2130838008);
    d = at.a(a).a(2130838044);
    g = paramMap;
    f = paramMap1;
    b();
  }
  
  private void a(List<i> paramList, List<ShortcutFormat> paramList1)
  {
    ArrayList localArrayList = ad.a(a).N();
    int j = 0;
    while (j < paramList1.size())
    {
      i locali = new i(this);
      ShortcutFormat localShortcutFormat = (ShortcutFormat)paramList1.get(j);
      boolean bool = true;
      if ((!ap.v(targetLocation)) && (!targetLocation.endsWith("/")) && (!targetLocation.endsWith("#"))) {
        targetLocation += "/";
      }
      if (ap.bl(targetLocation)) {
        bool = com.estrongs.fs.impl.local.i.b(targetLocation).getFileType().a();
      }
      if ((bool) && (!localArrayList.contains(targetLocation)))
      {
        c = targetLocation;
        b = shortcutName;
        a = bc.a(a, targetLocation);
        paramList.add(locali);
      }
      j += 1;
    }
  }
  
  private String b(int paramInt)
  {
    return a.getString(paramInt);
  }
  
  private void b()
  {
    c = new ArrayList();
    j localj = new j(this, null);
    a = b(2131231336);
    c.add(localj);
    localj = new j(this, null);
    a = b(2131232464);
    b = new LinkedList();
    c();
    Object localObject = at.a(a);
    ArrayList localArrayList = ad.a(a).N();
    int j = 0;
    while (j < h.size())
    {
      i locali = new i(this);
      c = ((String)h.get(j));
      b = ((String)g.get(c));
      a = ((at)localObject).a(((Integer)f.get(c)).intValue());
      if (!localArrayList.contains(c)) {
        b.add(locali);
      }
      j += 1;
    }
    c.add(localj);
    localj = new j(this, null);
    a = b(2131231079);
    b = new LinkedList();
    localObject = new ArrayList();
    ((List)localObject).addAll(dd.a());
    bc.a(a.n, false, (List)localObject);
    a(b, (List)localObject);
    c.add(localj);
  }
  
  private void b(String paramString)
  {
    h.add(i, paramString);
  }
  
  private void c()
  {
    h = new ArrayList();
    Object localObject = b.b();
    h.add("#home_page#");
    h.add("#home#");
    if (!z.n)
    {
      h.add("/");
      i = 4;
    }
    h.add(localObject);
    h.add("pic://");
    h.add("music://");
    h.add("video://");
    h.add("book://");
    if (z.j) {
      h.add("app://");
    }
    h.add(ad.a(a).A());
    h.add("mynetwork://");
    if (!z.d) {
      h.add("smb://");
    }
    if (!z.U) {
      h.add("net://");
    }
    h.add("ftp://");
    if (z.e) {
      h.add("bt://");
    }
    if (!z.ae) {
      h.add("remote://");
    }
    if (!z.T) {
      h.add("download://");
    }
    h.add("recycle://");
    localObject = ap.a();
    ((List)localObject).remove(b.b());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      a((String)((Iterator)localObject).next());
    }
    h.remove("app://");
    h.remove("mynetwork://");
  }
  
  public i a(int paramInt1, int paramInt2)
  {
    Object localObject = a(paramInt1);
    try
    {
      localObject = (i)b.get(paramInt2);
      return (i)localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public j a(int paramInt)
  {
    return (j)c.get(paramInt);
  }
  
  public void a()
  {
    b();
    notifyDataSetChanged();
  }
  
  public void a(String paramString)
  {
    b(paramString);
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = k.a(a).inflate(2130903281, null);
      int j = paramViewGroup.getPaddingLeft();
      int k = paramViewGroup.getPaddingRight();
      paramViewGroup.setBackgroundResource(2130838308);
      paramViewGroup.setPadding(j, 0, k, 0);
      paramViewGroup.setFocusable(false);
    }
    paramView = a(paramInt1, paramInt2);
    ImageView localImageView = (ImageView)paramViewGroup.findViewById(2131625045);
    if (a == null) {
      localImageView.setVisibility(8);
    }
    for (;;)
    {
      ((TextView)paramViewGroup.findViewById(2131625046)).setText(b);
      localImageView = (ImageView)paramViewGroup.findViewById(2131625048);
      localImageView.setFocusable(true);
      localImageView.setImageResource(2130838431);
      localImageView.setOnClickListener(new h(this, paramView));
      return paramViewGroup;
      localImageView.setVisibility(0);
      localImageView.setImageDrawable(a);
    }
  }
  
  public int getChildrenCount(int paramInt)
  {
    List localList = ab;
    if (localList == null) {
      return 0;
    }
    return localList.size();
  }
  
  public int getGroupCount()
  {
    return 3;
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = k.a(a).inflate(2130903258, null);
      paramViewGroup.setMinimumHeight(com.estrongs.android.ui.d.g.a(a, 48.0F));
    }
    paramView = a(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131624537);
    localTextView.setTextColor(at.a(a).c(2131558661));
    localTextView.setText(a);
    paramView = (ImageView)paramViewGroup.findViewById(2131624544);
    if (paramInt > 0)
    {
      if (paramBoolean) {
        paramView.setImageDrawable(d);
      }
      for (;;)
      {
        paramView.setVisibility(0);
        return paramViewGroup;
        paramView.setImageDrawable(e);
      }
    }
    paramView.setVisibility(8);
    return paramViewGroup;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
  
  public void onGroupCollapsed(int paramInt)
  {
    Message localMessage = new Message();
    what = 1;
    arg1 = paramInt;
    arg2 = 1;
    b.sendMessage(localMessage);
  }
  
  public void onGroupExpanded(int paramInt)
  {
    Message localMessage = new Message();
    what = 1;
    arg1 = paramInt;
    arg2 = 0;
    b.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */