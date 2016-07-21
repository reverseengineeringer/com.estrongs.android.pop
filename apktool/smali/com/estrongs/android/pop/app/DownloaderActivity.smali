.class public Lcom/estrongs/android/pop/app/DownloaderActivity;
.super Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/estrongs/android/j/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->b:Lcom/estrongs/android/j/c;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;Z)Lcom/estrongs/android/ui/dialog/ci;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;ZLjava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;ZLjava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;ZLjava/lang/String;Z)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;ZLjava/lang/String;Z)Lcom/estrongs/android/ui/dialog/ci;
    .locals 9

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v1, 0x7f080297

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lcom/estrongs/fs/b/ad;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/b/ad;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static/range {p7 .. p7}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "title"

    move-object/from16 v0, p7

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/a/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/estrongs/fs/b/ad;

    iput-boolean p6, v2, Lcom/estrongs/fs/b/ad;->f:Z

    move-object v2, v1

    check-cast v2, Lcom/estrongs/fs/b/ad;

    move/from16 v0, p8

    iput-boolean v0, v2, Lcom/estrongs/fs/b/ad;->g:Z

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/a/a;->setDescription(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {v1, p3}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    :cond_2
    new-instance v2, Lcom/estrongs/android/pop/app/bc;

    move-object v3, p0

    move-object v4, v7

    move-object v5, v1

    move-object v6, v8

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/pop/app/bc;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/jh;->a(Z)Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/jh;->c()V

    invoke-virtual {v1}, Lcom/estrongs/a/a;->execute()V

    return-object v2
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;
    .locals 8

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move v6, v4

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;ZLjava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Lcom/estrongs/fs/b/ar;Z)Lcom/estrongs/android/ui/dialog/jh;
    .locals 8

    const/4 v7, 0x0

    const v0, 0x7f08029b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f080297

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/estrongs/fs/b/ar;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v3, v3, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/estrongs/android/pop/app/ba;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/app/ba;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Ljava/lang/String;Lcom/estrongs/fs/b/ar;Landroid/app/Activity;)V

    invoke-virtual {v0, v7}, Lcom/estrongs/android/ui/dialog/jh;->a(Z)Lcom/estrongs/android/ui/dialog/jh;

    const v1, 0x7f08029c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/bb;

    invoke-direct {v1, p1, p2, p0}, Lcom/estrongs/android/pop/app/bb;-><init>(Lcom/estrongs/fs/b/ar;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->c()V

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/DownloaderActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 10

    const v9, 0x7f08060b

    const v8, 0x7f0804d5

    const v7, 0x7f08029b

    const v6, 0x7f08008f

    new-instance v0, Lcom/estrongs/android/pop/app/bd;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/bd;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v1, Lcom/estrongs/android/pop/app/be;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/pop/app/be;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v2, Lcom/estrongs/android/pop/app/bf;

    invoke-direct {v2, p0, p1, p2}, Lcom/estrongs/android/pop/app/bf;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/q;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v3

    invoke-virtual {v3, v9, v1}, Lcom/estrongs/android/ui/dialog/cv;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    const v3, 0x7f0806d4

    invoke-virtual {v1, v3, v2}, Lcom/estrongs/android/ui/dialog/cv;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/estrongs/android/ui/dialog/cv;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    invoke-virtual {v2, v9, v1}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/fs/h;Z)V
    .locals 4

    const-string v0, ""

    instance-of v1, p1, Lcom/estrongs/fs/impl/pcs/a;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/fs/impl/pcs/a;

    iget-object v0, v0, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->af()Ljava/lang/String;

    move-result-object v2

    instance-of v1, p1, Lcom/estrongs/fs/impl/pcs/a;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/fs/b/ar;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    check-cast p1, Lcom/estrongs/fs/impl/pcs/a;

    invoke-direct {v1, v3, v2, p1}, Lcom/estrongs/fs/b/ar;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f08007f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/ar;->setDescription(Ljava/lang/String;)V

    invoke-static {p0, v1, p2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Lcom/estrongs/fs/b/ar;Z)Lcom/estrongs/android/ui/dialog/jh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ar;->execute()V

    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/fs/b/ar;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/estrongs/fs/b/ar;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->af()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/b/ar;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/estrongs/fs/b/ar;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, p2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Lcom/estrongs/fs/b/ar;Z)Lcom/estrongs/android/ui/dialog/jh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ar;->execute()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/DownloaderActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/az;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/az;-><init>(Lcom/estrongs/android/pop/app/DownloaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->j()Lcom/estrongs/android/ui/pcs/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p2}, Lcom/estrongs/android/ui/pcs/l;->a(ILandroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->b:Lcom/estrongs/android/j/c;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "islocalopen"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->b:Lcom/estrongs/android/j/c;

    const-string v1, "act3"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->b:Lcom/estrongs/android/j/c;

    const-string v1, "act3"

    const-string v2, "download_manager"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    const v0, 0x7f080299

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->b(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->finish()V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/estrongs/android/pop/app/aw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/aw;-><init>(Lcom/estrongs/android/pop/app/DownloaderActivity;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(I)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ci;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/dialog/ci;->setSelectable(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f08029a

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const v4, 0x7f08029b

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, -0x1

    new-instance v4, Lcom/estrongs/android/pop/app/ax;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/pop/app/ax;-><init>(Lcom/estrongs/android/pop/app/DownloaderActivity;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/ui/dialog/ci;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a;->a()Lcom/estrongs/android/pop/app/ad/a;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ad/a;->a(Ljava/lang/String;)V

    goto :goto_2
.end method
