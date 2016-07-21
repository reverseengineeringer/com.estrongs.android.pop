.class public Lcom/estrongs/android/view/bx;
.super Lcom/estrongs/android/view/cr;


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/estrongs/a/a/p;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/bx;->a:Z

    new-instance v0, Lcom/estrongs/android/view/cf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cf;-><init>(Lcom/estrongs/android/view/bx;)V

    iput-object v0, p0, Lcom/estrongs/android/view/bx;->c:Lcom/estrongs/a/a/p;

    return-void
.end method

.method private a(Lcom/estrongs/a/a;)V
    .locals 4

    instance-of v0, p1, Lcom/estrongs/fs/b/y;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/bx;->a:Z

    check-cast p1, Lcom/estrongs/fs/b/y;

    invoke-virtual {p1}, Lcom/estrongs/fs/b/y;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bx;->b:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/view/bx;->b:Ljava/util/List;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/estrongs/fs/impl/local/f;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/view/FileExplorerActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/view/cd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cd;-><init>(Lcom/estrongs/android/view/bx;)V

    invoke-static {p1, p2, v0}, Lcom/estrongs/fs/b/ag;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;Lcom/estrongs/a/a/p;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/bx;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/bx;->u()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/bx;Lcom/estrongs/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/bx;->a(Lcom/estrongs/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/bx;Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/bx;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;)V

    return-void
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->W:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/ce;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ce;-><init>(Lcom/estrongs/android/view/bx;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300ab

    return v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x6

    invoke-super {p0, v0}, Lcom/estrongs/android/view/cr;->a(I)V

    return-void
.end method

.method public a_(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/bx;->J:Lcom/estrongs/fs/util/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->J:Lcom/estrongs/fs/util/a/a;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/bx;->a(Ljava/util/List;Lcom/estrongs/fs/util/a/a;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->a_(Ljava/util/List;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/view/bx;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/bx;->b:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/bx;->a:Z

    :cond_1
    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->b(Z)V

    return-void
.end method

.method public i_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public j_()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->j_()V

    return-void
.end method

.method public l()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->l()V

    return-void
.end method

.method protected m_()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->m_()V

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->o:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/view/by;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/by;-><init>(Lcom/estrongs/android/view/bx;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected n_()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080316

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/bx;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->o:Landroid/widget/ImageView;

    const v1, 0x7f0202b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/view/cr;->n_()V

    return-void

    :cond_0
    const v0, 0x7f0802bd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/bx;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->o:Landroid/widget/ImageView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->o:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0
.end method

.method public s()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->q()Z

    move-result v0

    new-instance v1, Lcom/estrongs/android/view/bz;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/view/bz;-><init>(Lcom/estrongs/android/view/bx;Z)V

    new-instance v0, Lcom/estrongs/android/view/ca;

    iget-object v2, p0, Lcom/estrongs/android/view/bx;->ag:Landroid/app/Activity;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/estrongs/android/view/ca;-><init>(Lcom/estrongs/android/view/bx;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bx;->ag:Landroid/app/Activity;

    const v2, 0x7f080082

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bx;->ag:Landroid/app/Activity;

    const v2, 0x7f080226

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/view/cb;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/cb;-><init>(Lcom/estrongs/android/view/bx;Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/f;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bx;->ag:Landroid/app/Activity;

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/view/cc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/view/cc;-><init>(Lcom/estrongs/android/view/bx;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/f;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/f;->c(Z)V

    return-void
.end method

.method public t()Lcom/estrongs/a/a/p;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/bx;->c:Lcom/estrongs/a/a/p;

    return-object v0
.end method
