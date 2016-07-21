package com.estrongs.android.ui.recycler;

import android.content.Context;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.topclassify.ExpandableLayout;
import com.estrongs.android.ui.topclassify.b;
import java.util.List;

public class d
  extends RecyclerView.Adapter<RecyclerView.ViewHolder>
{
  private RecyclerView.Adapter<RecyclerView.ViewHolder> a;
  private GridLayoutManager b;
  private Context c;
  private String d;
  private final int e = -1;
  
  public d(Context paramContext, RecyclerView paramRecyclerView, String paramString)
  {
    a = paramRecyclerView.getAdapter();
    b = ((GridLayoutManager)paramRecyclerView.getLayoutManager());
    c = paramContext;
    d = paramString;
  }
  
  public int getItemCount()
  {
    if (a.getItemCount() > 0) {
      return a.getItemCount() + 1;
    }
    return 0;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt == 0) {
      return -1;
    }
    return a.getItemViewType(paramInt - 1);
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if (getItemViewType(paramInt) == -1) {
      return;
    }
    a.onBindViewHolder(paramViewHolder, paramInt - 1);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt != -1) {
      return a.onCreateViewHolder(paramViewGroup, paramInt);
    }
    paramViewGroup = LayoutInflater.from(c).inflate(2130903404, paramViewGroup, false);
    LinearLayout localLinearLayout = (LinearLayout)paramViewGroup.findViewById(2131624980);
    ExpandableLayout localExpandableLayout = (ExpandableLayout)paramViewGroup.findViewById(2131624979);
    Object localObject = (ImageView)paramViewGroup.findViewById(2131624981);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131625462);
    localExpandableLayout.setSwitcher((View)localObject);
    localObject = ((FileExplorerActivity)c).aw().a(d);
    if (localObject != null)
    {
      List localList = ((b)localObject).f();
      localExpandableLayout.setShowViews(localList);
      if (localList.size() > 2) {
        break label185;
      }
      localLinearLayout.setVisibility(8);
    }
    for (;;)
    {
      localLinearLayout.setOnClickListener(new e(this, localExpandableLayout));
      paramViewGroup.findViewById(2131624982).setVisibility(0);
      localTextView.setVisibility(0);
      localTextView.setText(((b)localObject).b());
      return new f(this, paramViewGroup);
      label185:
      localLinearLayout.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.recycler.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */