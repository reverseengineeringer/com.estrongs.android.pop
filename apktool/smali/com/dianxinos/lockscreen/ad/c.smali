.class public Lcom/dianxinos/lockscreen/ad/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/dianxinos/lockscreen/ad/c;


# instance fields
.field private b:Z

.field private c:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

.field private d:Lcom/dianxinos/lockscreen/ad/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    sget v1, Lcom/dianxinos/lockscreen/c/f;->a:I

    invoke-direct {v0, p1, v1}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/c;->c:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/c;
    .locals 2

    sget-object v0, Lcom/dianxinos/lockscreen/ad/c;->a:Lcom/dianxinos/lockscreen/ad/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/dianxinos/lockscreen/ad/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/lockscreen/ad/c;->a:Lcom/dianxinos/lockscreen/ad/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/lockscreen/ad/c;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/ad/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/lockscreen/ad/c;->a:Lcom/dianxinos/lockscreen/ad/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dianxinos/lockscreen/ad/c;->a:Lcom/dianxinos/lockscreen/ad/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/dianxinos/lockscreen/ad/extra/ADCardController;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/c;->c:Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    return-object v0
.end method

.method public b()V
    .locals 2

    const-string v0, "LockScreen"

    const-string v1, "mgr screen present received ! isPresent true"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ad/c;->b:Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/c;->d:Lcom/dianxinos/lockscreen/ad/d;

    if-eqz v0, :cond_0

    const-string v0, "LockScreen"

    const-string v1, "mgr call OnPresentState!"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/c;->d:Lcom/dianxinos/lockscreen/ad/d;

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/ad/d;->a()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ad/c;->b:Z

    return v0
.end method
