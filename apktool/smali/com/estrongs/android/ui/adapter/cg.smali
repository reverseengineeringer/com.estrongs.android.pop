.class Lcom/estrongs/android/ui/adapter/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/a;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Lcom/estrongs/android/ui/adapter/a;II)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/cg;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/cg;->a:Lcom/estrongs/android/ui/adapter/a;

    iput p3, p0, Lcom/estrongs/android/ui/adapter/cg;->b:I

    iput p4, p0, Lcom/estrongs/android/ui/adapter/cg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    const/16 v7, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/cg;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/cg;->a:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)Z

    move-result v0

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/cg;->a:Lcom/estrongs/android/ui/adapter/a;

    iget-boolean v3, v3, Lcom/estrongs/android/ui/adapter/a;->e:Z

    if-nez v3, :cond_4

    move v0, v1

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/cg;->a:Lcom/estrongs/android/ui/adapter/a;

    invoke-virtual {v4}, Lcom/estrongs/android/ui/adapter/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/cg;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v4}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->ci(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    iget-object v4, p0, Lcom/estrongs/android/ui/adapter/cg;->a:Lcom/estrongs/android/ui/adapter/a;

    iget-object v4, v4, Lcom/estrongs/android/ui/adapter/a;->g:Ljava/lang/String;

    new-instance v5, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v6, p0, Lcom/estrongs/android/ui/adapter/cg;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v6}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/estrongs/android/ui/adapter/cg;->a:Lcom/estrongs/android/ui/adapter/a;

    iget-object v6, v6, Lcom/estrongs/android/ui/adapter/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/String;

    new-array v7, v7, [I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/cg;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const v8, 0x7f080491

    invoke-virtual {v3, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    aput v1, v7, v1

    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/cg;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v8, 0x7f080492

    invoke-virtual {v0, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    aput v2, v7, v3

    add-int/lit8 v0, v3, 0x1

    :goto_2
    if-nez v4, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/cg;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const v8, 0x7f0800a1

    invoke-virtual {v3, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    const/4 v3, 0x2

    aput v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/cg;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const v8, 0x7f0805db

    invoke-virtual {v3, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    const/4 v3, 0x3

    aput v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/cg;->d:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v3}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const v8, 0x7f0803d9

    invoke-virtual {v3, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    const/4 v3, 0x4

    aput v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v6, v0}, Lcom/estrongs/android/util/bk;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v3, Lcom/estrongs/android/ui/adapter/ch;

    invoke-direct {v3, p0, v7, v4}, Lcom/estrongs/android/ui/adapter/ch;-><init>(Lcom/estrongs/android/ui/adapter/cg;[ILjava/lang/String;)V

    invoke-virtual {v5, v0, v1, v3}, Lcom/estrongs/android/ui/dialog/ci;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v5, v1}, Lcom/estrongs/android/ui/dialog/ci;->setSelectable(Z)V

    invoke-virtual {v5}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return v2

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v0

    move v0, v2

    goto/16 :goto_0
.end method
