.class public Lcom/duapps/ad/base/DuAdNetwork;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Lcom/duapps/ad/base/DuAdNetwork$Region;

.field private static c:Lcom/duapps/ad/base/DuAdNetwork;

.field private static d:Lcom/duapps/ad/base/g;

.field private static f:Z

.field private static final g:Ljava/lang/Object;

.field private static h:I

.field private static volatile j:Z


# instance fields
.field private e:Ljava/lang/String;

.field private i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/duapps/ad/base/DuAdNetwork;->a:Z

    sget-object v0, Lcom/duapps/ad/base/DuAdNetwork$Region;->OVERSEA:Lcom/duapps/ad/base/DuAdNetwork$Region;

    sput-object v0, Lcom/duapps/ad/base/DuAdNetwork;->b:Lcom/duapps/ad/base/DuAdNetwork$Region;

    sput-boolean v1, Lcom/duapps/ad/base/DuAdNetwork;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duapps/ad/base/DuAdNetwork;->g:Ljava/lang/Object;

    const/16 v0, 0x1f4

    sput v0, Lcom/duapps/ad/base/DuAdNetwork;->h:I

    sput-boolean v1, Lcom/duapps/ad/base/DuAdNetwork;->j:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duapps/ad/base/DuAdNetwork;->i:Landroid/content/Context;

    invoke-direct {p0}, Lcom/duapps/ad/base/DuAdNetwork;->h()V

    invoke-static {p1}, Lcom/duapps/ad/stats/q;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/duapps/ad/base/DuAdNetwork;->d:Lcom/duapps/ad/base/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duapps/ad/base/DuAdNetwork;->d:Lcom/duapps/ad/base/g;

    invoke-interface {v0}, Lcom/duapps/ad/base/g;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DuAdNetwork"

    const-string v1, "Params error."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DuAdNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not ACTION_PACKAGE_ADDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "DuAdNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_PACKAGE_ADDED, replaceing? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/duapps/ad/base/DuAdNetwork;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "DuAdNetwork"

    const-string v1, "context or record is null"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/duapps/ad/base/an;->a()Lcom/duapps/ad/base/an;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/base/f;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/base/f;-><init>(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/an;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/duapps/ad/base/ag;->a(Landroid/content/Context;)Lcom/duapps/ad/base/ag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/ag;->a(Ljava/lang/String;)V

    const-class v1, Lcom/duapps/ad/base/DuAdNetwork;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/DuAdNetwork;->c:Lcom/duapps/ad/base/DuAdNetwork;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duapps/ad/base/DuAdNetwork;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/base/DuAdNetwork;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/base/DuAdNetwork;->c:Lcom/duapps/ad/base/DuAdNetwork;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "prod"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/duapps/ad/base/DuAdNetwork;->a:Z

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/duapps/ad/base/DuAdNetwork;->a:Z

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Z)V

    sget-boolean v0, Lcom/duapps/ad/base/DuAdNetwork;->a:Z

    invoke-static {v0}, Lcom/duapps/ad/entity/a/b;->a(Z)V

    invoke-static {p0}, Lcom/duapps/ad/base/t;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/duapps/ad/stats/q;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/duapps/ad/coin/CoinManager;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "dev"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v1, Lcom/duapps/ad/base/DuAdNetwork;->a:Z

    goto :goto_0

    :cond_2
    const-string v0, "test"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/duapps/ad/base/DuAdNetwork;->a:Z

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/duapps/ad/base/t;->a(Landroid/content/Context;)Lcom/duapps/ad/base/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/t;->c(Ljava/lang/String;)Lcom/duapps/ad/stats/p;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DuAdNetwork"

    const-string v2, "Non-click item, skip."

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/duapps/ad/base/DuAdNetwork;->c(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/duapps/ad/base/DuAdNetwork;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/t;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, v1}, Lcom/duapps/ad/stats/u;->f(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    invoke-virtual {v1}, Lcom/duapps/ad/stats/p;->q()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "cate"

    invoke-virtual {v1}, Lcom/duapps/ad/stats/p;->g()Lcom/duapps/ad/entity/AdData;

    move-result-object v4

    iget-object v4, v4, Lcom/duapps/ad/entity/AdData;->u:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.dianxinos.common.toolbox.action.INSTALL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    :cond_4
    invoke-static {}, Lcom/duapps/ad/base/DuAdNetwork;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/duapps/ad/stats/p;->b()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/t;->e(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/duapps/ad/base/DuAdNetwork;->a(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    :cond_5
    invoke-static {}, Lcom/duapps/ad/base/DuAdNetwork;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/duapps/ad/stats/p;->b()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_6
    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/t;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c()Lcom/duapps/ad/base/DuAdNetwork;
    .locals 2

    sget-object v0, Lcom/duapps/ad/base/DuAdNetwork;->c:Lcom/duapps/ad/base/DuAdNetwork;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call init first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/duapps/ad/base/DuAdNetwork;->c:Lcom/duapps/ad/base/DuAdNetwork;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/duapps/ad/base/t;->a(Landroid/content/Context;)Lcom/duapps/ad/base/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duapps/ad/base/t;->f(Ljava/lang/String;)Lcom/duapps/ad/stats/p;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "DuAdNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TiggerPreParse:packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duapps/ad/stats/p;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";preParse="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/duapps/ad/stats/p;->n()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duapps/ad/stats/p;->n()I

    move-result v1

    if-ne v1, v6, :cond_0

    invoke-virtual {v0, v6}, Lcom/duapps/ad/stats/p;->a(Z)V

    new-instance v1, Lcom/duapps/ad/stats/c;

    invoke-direct {v1, p0}, Lcom/duapps/ad/stats/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/duapps/ad/stats/c;->e(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/duapps/ad/base/DuAdNetwork;->b:Lcom/duapps/ad/base/DuAdNetwork$Region;

    sget-object v1, Lcom/duapps/ad/base/DuAdNetwork$Region;->OVERSEA:Lcom/duapps/ad/base/DuAdNetwork$Region;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/duapps/ad/base/DuAdNetwork;->f:Z

    return v0
.end method

.method static synthetic f()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/duapps/ad/base/DuAdNetwork;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    sget v0, Lcom/duapps/ad/base/DuAdNetwork;->h:I

    return v0
.end method

.method private h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/DuAdNetwork;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/DuAdNetwork;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "app_license"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/base/DuAdNetwork;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/duapps/ad/base/DuAdNetwork;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "license should not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/base/DuAdNetwork;->e:Ljava/lang/String;

    return-object v0
.end method
