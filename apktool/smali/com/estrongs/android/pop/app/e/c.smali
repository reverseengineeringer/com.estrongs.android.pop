.class public Lcom/estrongs/android/pop/app/e/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/pop/app/e/c;

.field private static final b:Ljava/text/DecimalFormat;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/e/c;->a:Lcom/estrongs/android/pop/app/e/c;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/pop/app/e/c;->b:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/e/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/e/d;-><init>(Lcom/estrongs/android/pop/app/e/c;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->d:Ljava/util/Comparator;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public static declared-synchronized a()Lcom/estrongs/android/pop/app/e/c;
    .locals 2

    const-class v1, Lcom/estrongs/android/pop/app/e/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/e/c;->a:Lcom/estrongs/android/pop/app/e/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/e/c;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/e/c;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/e/c;->a:Lcom/estrongs/android/pop/app/e/c;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/e/c;->a:Lcom/estrongs/android/pop/app/e/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803b6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803b4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803b7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803b5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803b9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803b8

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/e/c;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/e/c;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/e/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "DCIM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    const-string v0, "Screenshots"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "Download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "Backups"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "SDCards"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0803c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/e/e;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/d;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/estrongs/android/pop/app/e/c;->a(Lcom/estrongs/android/scanner/a/d;Lcom/estrongs/android/pop/app/e/e;J)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/e/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->f()J

    move-result-wide v6

    sub-long v6, p2, v6

    invoke-virtual {p0, v6, v7}, Lcom/estrongs/android/pop/app/e/c;->a(J)Lcom/estrongs/android/pop/app/e/f;

    move-result-object v5

    new-instance v1, Lcom/estrongs/android/pop/app/e/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/e/e;-><init>(Lcom/estrongs/android/pop/app/e/c;)V

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->j()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/estrongs/android/pop/app/e/e;->a(J)V

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/app/e/e;->a(Lcom/estrongs/android/pop/app/e/f;)V

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->k()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/app/e/e;->a(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/app/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->f()J

    move-result-wide v6

    sub-long v6, p2, v6

    invoke-virtual {v1, v6, v7}, Lcom/estrongs/android/pop/app/e/e;->b(J)V

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/estrongs/android/pop/app/e/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/e/e;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private a(Lcom/estrongs/android/pop/app/e/f;Lcom/estrongs/android/pop/app/e/f;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lcom/estrongs/android/pop/app/e/f;->a:I

    iget v3, p2, Lcom/estrongs/android/pop/app/e/f;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/estrongs/android/pop/app/e/f;->b:I

    iget v3, p2, Lcom/estrongs/android/pop/app/e/f;->b:I

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget v3, p1, Lcom/estrongs/android/pop/app/e/f;->b:I

    if-nez v3, :cond_2

    iget v2, p1, Lcom/estrongs/android/pop/app/e/f;->c:I

    iget v3, p2, Lcom/estrongs/android/pop/app/e/f;->c:I

    if-ne v2, v3, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private a(Lcom/estrongs/android/scanner/a/d;Lcom/estrongs/android/pop/app/e/e;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/d;->k()I

    move-result v0

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/e/e;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/scanner/a/d;Lcom/estrongs/android/pop/app/e/e;J)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/d;->f()J

    move-result-wide v2

    sub-long v2, p3, v2

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/pop/app/e/c;->a(J)Lcom/estrongs/android/pop/app/e/f;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/e/c;->a(Lcom/estrongs/android/scanner/a/d;Lcom/estrongs/android/pop/app/e/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/e/e;->e()Lcom/estrongs/android/pop/app/e/f;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/pop/app/e/c;->a(Lcom/estrongs/android/pop/app/e/f;Lcom/estrongs/android/pop/app/e/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/e/e;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/d;->j()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/estrongs/android/pop/app/e/e;->a(J)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic b()Ljava/text/DecimalFormat;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/e/c;->b:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method private b(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;"
        }
    .end annotation

    const-wide/32 v0, 0x5265c00

    mul-long/2addr v0, p3

    sub-long v0, p1, v0

    invoke-static {}, Lcom/estrongs/android/scanner/a;->a()Lcom/estrongs/android/scanner/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/estrongs/android/scanner/a;->a(JJ)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/c;->d:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method


# virtual methods
.method public a(J)Lcom/estrongs/android/pop/app/e/f;
    .locals 13

    const-wide/32 v10, 0xea60

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0x5265c00

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    div-long v0, p1, v6

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v2, v0

    int-to-long v0, v2

    mul-long/2addr v0, v6

    sub-long v0, p1, v0

    div-long/2addr v0, v8

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-long v0, v2

    mul-long/2addr v0, v6

    sub-long v0, p1, v0

    int-to-long v4, v3

    mul-long/2addr v4, v8

    sub-long/2addr v0, v4

    div-long/2addr v0, v10

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-long v0, v2

    mul-long/2addr v0, v6

    sub-long v0, p1, v0

    int-to-long v6, v3

    mul-long/2addr v6, v8

    sub-long/2addr v0, v6

    int-to-long v6, v4

    mul-long/2addr v6, v10

    sub-long/2addr v0, v6

    long-to-int v5, v0

    new-instance v0, Lcom/estrongs/android/pop/app/e/f;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/e/f;-><init>(Lcom/estrongs/android/pop/app/e/c;IIII)V

    goto :goto_0
.end method

.method public a(JJ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/e/e;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/app/e/c;->b(JJ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/estrongs/android/pop/app/e/c;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
