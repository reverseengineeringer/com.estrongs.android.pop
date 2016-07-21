.class Lcom/estrongs/android/pop/app/cw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/HideListActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/HideListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x0

    const v6, 0x7f0300de

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/HideListActivity;->b(Lcom/estrongs/android/pop/app/HideListActivity;)[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v2

    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v2, v4}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;Z)Z

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/aj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ad;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {}, Lcom/estrongs/android/pop/utils/ad;->f()[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;[Lcom/estrongs/android/pop/utils/aj;)[Lcom/estrongs/android/pop/utils/aj;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->b(Lcom/estrongs/android/pop/app/HideListActivity;)[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->b(Lcom/estrongs/android/pop/app/HideListActivity;)[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    new-array v0, v4, [Lcom/estrongs/android/pop/utils/aj;

    new-instance v2, Lcom/estrongs/android/pop/utils/aj;

    invoke-direct {v2, v5, v3, v5}, Lcom/estrongs/android/pop/utils/aj;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    new-instance v3, Lcom/estrongs/android/pop/app/cz;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/estrongs/android/pop/app/cz;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;Landroid/content/Context;I[Lcom/estrongs/android/pop/utils/aj;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;Lcom/estrongs/android/pop/app/cz;)Lcom/estrongs/android/pop/app/cz;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/HideListActivity;->c(Lcom/estrongs/android/pop/app/HideListActivity;)Lcom/estrongs/android/pop/app/cz;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->c(Lcom/estrongs/android/pop/app/HideListActivity;)Lcom/estrongs/android/pop/app/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cz;->notifyDataSetChanged()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/utils/ad;->b()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/utils/ad;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    new-instance v2, Lcom/estrongs/android/pop/app/cz;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/cw;->a:Lcom/estrongs/android/pop/app/HideListActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/HideListActivity;->b(Lcom/estrongs/android/pop/app/HideListActivity;)[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v5

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/estrongs/android/pop/app/cz;-><init>(Lcom/estrongs/android/pop/app/HideListActivity;Landroid/content/Context;I[Lcom/estrongs/android/pop/utils/aj;)V

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/HideListActivity;->a(Lcom/estrongs/android/pop/app/HideListActivity;Lcom/estrongs/android/pop/app/cz;)Lcom/estrongs/android/pop/app/cz;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
