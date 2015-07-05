.class public Lcom/estrongs/android/pop/app/DownloaderActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;Z)Lcom/estrongs/android/ui/dialog/cg;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;ZLjava/lang/String;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;ZLjava/lang/String;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f0b018a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/estrongs/fs/b/ad;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ad;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {p7}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "title"

    invoke-virtual {v0, v1, p7}, Lcom/estrongs/a/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/estrongs/fs/b/ad;

    iput-boolean p6, v1, Lcom/estrongs/fs/b/ad;->f:Z

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->setDescription(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {v0, p3}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    :cond_2
    new-instance v1, Lcom/estrongs/android/pop/app/ay;

    move-object v2, p0

    move-object v3, v6

    move-object v4, v0

    move-object v5, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/android/pop/app/ay;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ix;->a(Z)Lcom/estrongs/android/ui/dialog/ix;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ix;->c()V

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    return-object v1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 8

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->z()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move v6, v4

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/p;ZLjava/lang/String;ZLjava/lang/String;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Lcom/estrongs/fs/b/ap;Z)Lcom/estrongs/android/ui/dialog/ix;
    .locals 8

    const/4 v7, 0x0

    const v0, 0x7f0b04c5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0b018a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/estrongs/fs/b/ap;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v3, v3, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/estrongs/android/pop/app/aw;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/app/aw;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Ljava/lang/String;Lcom/estrongs/fs/b/ap;Landroid/app/Activity;)V

    invoke-virtual {v0, v7}, Lcom/estrongs/android/ui/dialog/ix;->a(Z)Lcom/estrongs/android/ui/dialog/ix;

    const v1, 0x7f0b04c8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/ax;

    invoke-direct {v1, p1, p2, p0}, Lcom/estrongs/android/pop/app/ax;-><init>(Lcom/estrongs/fs/b/ap;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->c()V

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/DownloaderActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/n;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 10

    const v9, 0x7f0b04f3

    const v8, 0x7f0b04c5

    const v7, 0x7f0b0369

    const v6, 0x7f0b023d

    new-instance v0, Lcom/estrongs/android/pop/app/az;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/az;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/n;Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v1, Lcom/estrongs/android/pop/app/ba;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/pop/app/ba;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/n;Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v2, Lcom/estrongs/android/pop/app/bb;

    invoke-direct {v2, p0, p1, p2}, Lcom/estrongs/android/pop/app/bb;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/n;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Lcom/estrongs/android/ui/dialog/ct;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    const v3, 0x7f0b04ca

    invoke-virtual {v1, v3, v2}, Lcom/estrongs/android/ui/dialog/ct;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lcom/estrongs/android/ui/dialog/ct;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    :goto_0
    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PCS_Home_Page_UV"

    const-string v2, "PCS_Home_Page_UV"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

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

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->ae()Ljava/lang/String;

    move-result-object v2

    instance-of v1, p1, Lcom/estrongs/fs/impl/pcs/a;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/fs/b/ap;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    check-cast p1, Lcom/estrongs/fs/impl/pcs/a;

    invoke-direct {v1, v3, v2, p1}, Lcom/estrongs/fs/b/ap;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b001f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/ap;->setDescription(Ljava/lang/String;)V

    invoke-static {p0, v1, p2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Lcom/estrongs/fs/b/ap;Z)Lcom/estrongs/android/ui/dialog/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ap;->execute()V

    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/fs/b/ap;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/estrongs/fs/b/ap;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ae()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/b/ap;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/estrongs/fs/b/ap;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, p2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Lcom/estrongs/fs/b/ap;Z)Lcom/estrongs/android/ui/dialog/ix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ap;->execute()V

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

    invoke-static {p0, v0, p2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/av;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/av;-><init>(Lcom/estrongs/android/pop/app/DownloaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->j()Lcom/estrongs/android/ui/pcs/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p2}, Lcom/estrongs/android/ui/pcs/j;->a(ILandroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/DownloaderActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const v0, 0x7f0b0189

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->d(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/estrongs/android/pop/app/as;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/as;-><init>(Lcom/estrongs/android/pop/app/DownloaderActivity;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(I)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cg;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/dialog/cg;->setSelectable(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0b036a

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0b04c5

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, -0x1

    new-instance v4, Lcom/estrongs/android/pop/app/at;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/pop/app/at;-><init>(Lcom/estrongs/android/pop/app/DownloaderActivity;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/ui/dialog/cg;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto :goto_1
.end method
