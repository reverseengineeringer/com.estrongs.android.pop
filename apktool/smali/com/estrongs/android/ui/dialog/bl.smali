.class public Lcom/estrongs/android/ui/dialog/bl;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/estrongs/android/ui/dialog/bv;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Lcom/estrongs/android/ui/dialog/ci;

.field h:Landroid/view/View;

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/ui/dialog/bu;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/estrongs/android/j/c;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;",
            ">;",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->b:Ljava/util/Set;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->e:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/bl;->f:Z

    iput-object v4, p0, Lcom/estrongs/android/ui/dialog/bl;->h:Landroid/view/View;

    iput-object v4, p0, Lcom/estrongs/android/ui/dialog/bl;->j:Lcom/estrongs/android/j/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/d/a;->G()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/ui/dialog/bu;

    invoke-direct {v1, p2, p3, p4}, Lcom/estrongs/android/ui/dialog/bu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p4}, Lcom/estrongs/android/ui/dialog/bl;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const v1, 0x7f08019e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/ui/dialog/bl;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/bm;

    invoke-direct {v2, p0, p5, p1}, Lcom/estrongs/android/ui/dialog/bm;-><init>(Lcom/estrongs/android/ui/dialog/bl;Landroid/content/DialogInterface$OnDismissListener;Lcom/estrongs/android/pop/app/d/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/ui/dialog/cv;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->g:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->g:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->g:Lcom/estrongs/android/ui/dialog/ci;

    new-instance v1, Lcom/estrongs/android/ui/dialog/bo;

    invoke-direct {v1, p0, p5}, Lcom/estrongs/android/ui/dialog/bo;-><init>(Lcom/estrongs/android/ui/dialog/bl;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->g:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ci;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->g:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/bl;->c()V

    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/dialog/bl;->a(IZ)Lcom/estrongs/fs/b/ao;

    return-void

    :cond_0
    move-object p2, p3

    goto :goto_0
.end method

.method private a(I)Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/bu;

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/bu;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/bl;)Lcom/estrongs/android/j/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->j:Lcom/estrongs/android/j/c;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/bl;Lcom/estrongs/android/j/c;)Lcom/estrongs/android/j/c;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bl;->j:Lcom/estrongs/android/j/c;

    return-object p1
.end method

.method private a(IZ)Lcom/estrongs/fs/b/ao;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/bl;->d()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/bl;->a(I)Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/bl;->b(I)V

    goto :goto_0

    :cond_2
    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/ao;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->getTaskStatus()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/bl;->b(I)V

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    new-instance v0, Lcom/estrongs/fs/impl/local/f;

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/fs/b/ao;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Lcom/estrongs/fs/b/ao;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;Z)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Lcom/estrongs/android/ui/dialog/bp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/bp;-><init>(Lcom/estrongs/android/ui/dialog/bl;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ao;->addProgressListener(Lcom/estrongs/a/a/l;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/br;

    invoke-direct {v1, p0, p2, p1}, Lcom/estrongs/android/ui/dialog/br;-><init>(Lcom/estrongs/android/ui/dialog/bl;ZI)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ao;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    sget v1, Lcom/estrongs/fs/b/ao;->f:I

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ao;->a(I)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->execute()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/bl;IZ)Lcom/estrongs/fs/b/ao;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/dialog/bl;->a(IZ)Lcom/estrongs/fs/b/ao;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/bl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/bl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/bl;->b(I)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;

    iget-boolean v2, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bl;->b:Ljava/util/Set;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/bl;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/bl;->a(IZ)Lcom/estrongs/fs/b/ao;

    :cond_0
    return-void
.end method

.method private d()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/bu;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/bu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->h:Landroid/view/View;

    const v1, 0x7f0e0261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const v3, 0x7f0801dd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<font size=\'8px\' color=\'red\'>("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    const v3, 0x7f0801de

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->h:Landroid/view/View;

    const v1, 0x7f0e01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/estrongs/android/ui/dialog/bv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/bv;-><init>(Lcom/estrongs/android/ui/dialog/bl;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/bl;->c:Lcom/estrongs/android/ui/dialog/bv;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bl;->c:Lcom/estrongs/android/ui/dialog/bv;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/bl;->e()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->h:Landroid/view/View;

    const v1, 0x7f0e0262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/bl;->f:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/bt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/bt;-><init>(Lcom/estrongs/android/ui/dialog/bl;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->h:Landroid/view/View;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/appinfo/AppFolderInfoManager$RemnantFolder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->i:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/ui/dialog/bu;

    invoke-direct {v1, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/bu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p3}, Lcom/estrongs/android/ui/dialog/bl;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->c:Lcom/estrongs/android/ui/dialog/bv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bv;->notifyDataSetChanged()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/bl;->a(IZ)Lcom/estrongs/fs/b/ao;

    return-void
.end method

.method b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/estrongs/fs/impl/local/f;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/bl;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/bl;->g:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/ci;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, -0x2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
