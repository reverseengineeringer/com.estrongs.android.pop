.class public Lcom/estrongs/android/ui/dialog/by;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/estrongs/fs/impl/b/c;

.field b:Lcom/estrongs/fs/b/r;

.field private c:Landroid/app/Activity;

.field private d:Lcom/estrongs/android/ui/dialog/cg;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->a:Lcom/estrongs/fs/impl/b/c;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->i:Ljava/lang/String;

    const-string v0, "/ES\u4e91\u5206\u4eab"

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/by;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/by;->e:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/estrongs/android/ui/dialog/by;->c:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v7, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/by;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03ec

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ca;

    invoke-direct {v1, p0, v5, v3}, Lcom/estrongs/android/ui/dialog/ca;-><init>(Lcom/estrongs/android/ui/dialog/by;Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v0, v6, v7, v2, v1}, Lcom/estrongs/android/ui/dialog/ct;->a([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->d(Z)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/bz;

    invoke-direct {v1, p0, p3}, Lcom/estrongs/android/ui/dialog/bz;-><init>(Lcom/estrongs/android/ui/dialog/by;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(Z)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->d:Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method

.method private a(JJ)D
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, v0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/by;JJ)D
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/ui/dialog/by;->a(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/by;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/by;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/by;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/by;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/dialog/by;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cc;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/cc;-><init>(Lcom/estrongs/android/ui/dialog/by;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->c:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cb;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/ui/dialog/cb;-><init>(Lcom/estrongs/android/ui/dialog/by;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/by;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/by;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/by;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/by;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/by;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/by;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/by;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/by;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/by;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/by;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/by;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/by;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/by;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/by;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/by;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->d:Lcom/estrongs/android/ui/dialog/cg;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/by;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/by;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/by;->k:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->d:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/by;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/r;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/by;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/b/r;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/by;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/by;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/by;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v3

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/fs/b/r;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v1, v5}, Lcom/estrongs/fs/b/r;->b(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/fs/b/r;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/by;->c:Landroid/app/Activity;

    const v3, 0x7f0b02bf

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/r;->setDescription(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v1, v6}, Lcom/estrongs/fs/b/r;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/fs/b/r;

    new-instance v2, Lcom/estrongs/android/ui/dialog/ce;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/ce;-><init>(Lcom/estrongs/android/ui/dialog/by;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/r;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/cf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cf;-><init>(Lcom/estrongs/android/ui/dialog/by;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/r;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/by;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->execute()V

    goto/16 :goto_1
.end method
