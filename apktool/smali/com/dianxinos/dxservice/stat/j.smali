.class public Lcom/dianxinos/dxservice/stat/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field private l:Landroid/content/pm/PackageInfo;

.field private m:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dianxinos/dxservice/stat/j;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dianxinos/dxservice/stat/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/dianxinos/dxservice/stat/j;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dianxinos/dxservice/stat/j;->g:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->h:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->m:Landroid/content/pm/PackageManager;

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->m:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/j;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->l:Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/j;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/dianxinos/dxservice/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/dianxinos/dxservice/a/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->l:Landroid/content/pm/PackageInfo;

    const-string v1, "firstInstallTime"

    invoke-static {v0, v1}, Lcom/dianxinos/dxservice/a/b;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->l:Landroid/content/pm/PackageInfo;

    const-string v1, "lastUpdateTime"

    invoke-static {v0, v1}, Lcom/dianxinos/dxservice/a/b;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dianxinos/dxservice/stat/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/dianxinos/dxservice/a/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dianxinos/dxservice/stat/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->k:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.BaseAppInfo"

    const-string v2, "NameNotFoundException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->m:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/j;->l:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->l:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/j;->m:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/j;->k:Ljava/lang/String;

    return-object v0
.end method
