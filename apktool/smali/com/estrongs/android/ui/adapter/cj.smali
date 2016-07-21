.class Lcom/estrongs/android/ui/adapter/cj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/adapter/a;

.field final synthetic d:Z

.field final synthetic e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;IILcom/estrongs/android/ui/adapter/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/cj;->e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    iput p2, p0, Lcom/estrongs/android/ui/adapter/cj;->a:I

    iput p3, p0, Lcom/estrongs/android/ui/adapter/cj;->b:I

    iput-object p4, p0, Lcom/estrongs/android/ui/adapter/cj;->c:Lcom/estrongs/android/ui/adapter/a;

    iput-boolean p5, p0, Lcom/estrongs/android/ui/adapter/cj;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    const v8, 0x7f080492

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/estrongs/android/ui/adapter/cj;->a:I

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cj;->e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    sget-object v4, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;->Device:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi$GroupType;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/adapter/cj;->b:I

    if-ne v0, v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/cj;->c:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/cj;->c:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/a;->c()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cj;->e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cj;->c:Lcom/estrongs/android/ui/adapter/a;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/cj;->c:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#home#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/cj;->e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->g(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cj;->e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)Z

    move-result v5

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/cj;->c:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/adapter/a;->c()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    if-nez v0, :cond_7

    new-array v0, v3, [Ljava/lang/String;

    :goto_2
    iget-boolean v6, p0, Lcom/estrongs/android/ui/adapter/cj;->d:Z

    if-eqz v6, :cond_4

    array-length v6, v0

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0, v6}, Lcom/estrongs/android/util/bk;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/estrongs/android/ui/adapter/cj;->e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v7}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v7

    const v8, 0x7f080649

    invoke-virtual {v7, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    :cond_4
    if-eqz v1, :cond_5

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bk;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v6, p0, Lcom/estrongs/android/ui/adapter/cj;->e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v6}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    const v7, 0x7f0803df

    invoke-virtual {v6, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    :cond_5
    new-instance v1, Lcom/estrongs/android/ui/adapter/ck;

    invoke-direct {v1, p0, v5}, Lcom/estrongs/android/ui/adapter/ck;-><init>(Lcom/estrongs/android/ui/adapter/cj;Z)V

    invoke-virtual {v4, v0, v3, v1}, Lcom/estrongs/android/ui/dialog/ci;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4, v3}, Lcom/estrongs/android/ui/dialog/ci;->setSelectable(Z)V

    invoke-virtual {v4}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    new-array v0, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/android/ui/adapter/cj;->e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v6}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    const v7, 0x7f080491

    invoke-virtual {v6, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    iget-object v6, p0, Lcom/estrongs/android/ui/adapter/cj;->e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v6}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    goto :goto_2

    :cond_8
    new-array v0, v2, [Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/android/ui/adapter/cj;->e:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v6}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    goto :goto_2
.end method
