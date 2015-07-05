.class public Lcom/estrongs/android/ui/c/b/u;
.super Lcom/estrongs/android/ui/c/b/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/c/b/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/c/a/h;)V
    .locals 9

    const v8, 0x7f0b0013

    const/4 v7, 0x2

    const v6, 0x7f0b002d

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/u;->e()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/u;->e()I

    move-result v0

    if-ne v0, v2, :cond_1

    new-array v0, v7, [Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v5, 0x7f0b0456

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v4, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    :goto_1
    new-instance v2, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v4}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b02ca

    invoke-virtual {v2, v4}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    const/4 v4, -0x1

    new-instance v5, Lcom/estrongs/android/ui/c/b/al;

    invoke-direct {v5, p0, v1, p1}, Lcom/estrongs/android/ui/c/b/al;-><init>(Lcom/estrongs/android/ui/c/b/u;ZLcom/estrongs/android/ui/c/a/h;)V

    invoke-virtual {v2, v0, v4, v5}, Lcom/estrongs/android/ui/dialog/ct;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ct;->d(Z)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v5, 0x7f0b0456

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v4, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/u;->e()I

    move-result v0

    if-ne v0, v2, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_1

    :cond_3
    new-array v0, v7, [Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v4, v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v4, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/u;->m()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/u;Lcom/estrongs/android/ui/c/a/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/b/u;->a(Lcom/estrongs/android/ui/c/a/h;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/u;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/c/b/u;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/u;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/h;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/a/h;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02ca

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v5, Lcom/estrongs/android/ui/c/b/am;

    invoke-direct {v5, p0, v3, p2, p1}, Lcom/estrongs/android/ui/c/b/am;-><init>(Lcom/estrongs/android/ui/c/b/u;Ljava/util/List;ZLjava/lang/String;)V

    invoke-virtual {v0, v4, v1, v5}, Lcom/estrongs/android/ui/dialog/ct;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->d(Z)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->p()Z

    move-result v0

    new-instance v1, Lcom/estrongs/android/ui/c/b/ah;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/c/b/ah;-><init>(Lcom/estrongs/android/ui/c/b/u;Z)V

    new-instance v0, Lcom/estrongs/android/ui/c/b/ai;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/estrongs/android/ui/c/b/ai;-><init>(Lcom/estrongs/android/ui/c/b/u;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0454

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/c/b/aj;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/c/b/aj;-><init>(Lcom/estrongs/android/ui/c/b/u;Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/g;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/c/b/ak;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/c/b/ak;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/g;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/g;->c(Z)V

    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/u;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 3

    invoke-super {p0}, Lcom/estrongs/android/ui/c/b/a;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/u;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/u;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/u;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "tookit_block"

    return-object v0
.end method

.method protected g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x6

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->c(Landroid/content/Context;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/estrongs/android/pop/z;->W:Z

    if-nez v2, :cond_7

    const-string v2, "pcs_disk"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v2, "remote_manager"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    const-string v0, "baidu_tool"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    sget-boolean v0, Lcom/estrongs/android/pop/z;->al:Z

    if-nez v0, :cond_1

    const-string v0, "send"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "task_manager"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_2

    const-string v0, "recycle"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_3

    const-string v0, "ftp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_4

    const-string v0, "downloader"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_5

    const-string v0, "disk_usage"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_6

    const-string v0, "music_player"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v1

    :cond_7
    const-string v2, "cloud"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    sget-boolean v0, Lcom/estrongs/android/pop/z;->d:Z

    if-nez v0, :cond_0

    const-string v0, "my_network"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected h()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    sget-boolean v0, Lcom/estrongs/android/pop/z;->ae:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f02024e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0452

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/v;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "remote_manager"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "remote_manager"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->c(Landroid/content/Context;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/c/a/h;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v2, 0x7f020251

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/v;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/ui/c/b/ag;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/c/b/ag;-><init>(Lcom/estrongs/android/ui/c/b/u;[Lcom/estrongs/android/pop/view/utils/v;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v0, "baidu_tool"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "baidu_tool"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-boolean v0, Lcom/estrongs/android/pop/z;->d:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020246

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0453

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/an;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/an;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "lan"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "lan"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-boolean v0, Lcom/estrongs/android/pop/z;->al:Z

    if-nez v0, :cond_3

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020253

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0454

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/ao;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "send"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "send"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-boolean v0, Lcom/estrongs/android/pop/z;->B:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020256

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b02c5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/ap;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/ap;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "task_manager"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "task_manager"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-boolean v0, Lcom/estrongs/android/pop/z;->ag:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f02024d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0432

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/aq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/aq;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "recycle"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "recycle"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-boolean v0, Lcom/estrongs/android/pop/z;->U:Z

    if-nez v0, :cond_6

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020239

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0054

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/ar;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/ar;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "cloud"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "cloud"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/estrongs/android/pop/z;->W:Z

    if-nez v0, :cond_7

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020255

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b052d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/as;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/as;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "pcs_disk"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "pcs_disk"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020240

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/aw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/aw;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "ftp"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "ftp"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/estrongs/android/pop/z;->e:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020236

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0055

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/w;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/w;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "bluetooth"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-boolean v0, Lcom/estrongs/android/pop/z;->T:Z

    if-nez v0, :cond_9

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f02023b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b037f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/x;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/x;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "downloader"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "downloader"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-boolean v0, Lcom/estrongs/android/pop/z;->D:Z

    if-nez v0, :cond_a

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f02023d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b00a7

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/y;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "net_manager"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "net_manager"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-boolean v0, Lcom/estrongs/android/pop/z;->Z:Z

    if-nez v0, :cond_b

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020243

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/z;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "hidelist"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "hidelist"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    sget-boolean v0, Lcom/estrongs/android/pop/z;->C:Z

    if-nez v0, :cond_c

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020250

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b01e6

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/aa;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "root"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "root"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    sget-boolean v0, Lcom/estrongs/android/pop/z;->R:Z

    if-nez v0, :cond_d

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020241

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0404

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/ab;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "gesture"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "gesture"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f02023c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0499

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/ac;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/ac;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "my_network"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "my_network"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f02023a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0136

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/ad;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/ad;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "disk_usage"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "disk_usage"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/ui/c/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/h;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f020249

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b02ae

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/ae;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/ae;-><init>(Lcom/estrongs/android/ui/c/b/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnClickListener;)V

    const-string v1, "music_player"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    const-string v2, "music_player"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/u;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/a;

    check-cast v0, Lcom/estrongs/android/ui/c/a/h;

    new-instance v2, Lcom/estrongs/android/ui/c/b/af;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/c/b/af;-><init>(Lcom/estrongs/android/ui/c/b/u;Lcom/estrongs/android/ui/c/a/h;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/c/a/h;->a(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_e
    return-void
.end method

.method protected i()I
    .locals 1

    const v0, 0x7f03001b

    return v0
.end method

.method protected j()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected k()I
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/u;->g:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/u;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
