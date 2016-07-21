.class public Lcom/flurry/sdk/je;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kj;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/je;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/je;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/je;
    .locals 3

    const-class v1, Lcom/flurry/sdk/je;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/je;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Class;)Lcom/flurry/sdk/kj;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/je;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/flurry/sdk/lf;)Lcom/flurry/sdk/jr;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/flurry/sdk/jr;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/lf;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jr;

    goto :goto_0
.end method

.method private m()Lcom/flurry/sdk/jr;
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/lh;->a()Lcom/flurry/sdk/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lh;->e()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/lf;)Lcom/flurry/sdk/jr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/flurry/sdk/jr;

    invoke-static {v0}, Lcom/flurry/sdk/lf;->a(Ljava/lang/Class;)V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    invoke-static {}, Lcom/flurry/sdk/lk;->a()Lcom/flurry/sdk/lk;

    invoke-static {}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/ju;

    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    invoke-static {}, Lcom/flurry/sdk/jf;->a()Lcom/flurry/sdk/jf;

    invoke-static {}, Lcom/flurry/sdk/jm;->a()Lcom/flurry/sdk/jm;

    invoke-static {}, Lcom/flurry/sdk/jj;->a()Lcom/flurry/sdk/jj;

    invoke-static {}, Lcom/flurry/sdk/jf;->a()Lcom/flurry/sdk/jf;

    invoke-static {}, Lcom/flurry/sdk/jo;->a()Lcom/flurry/sdk/jo;

    invoke-static {}, Lcom/flurry/sdk/ji;->a()Lcom/flurry/sdk/ji;

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jr;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jr;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/jq;->b()V

    invoke-static {}, Lcom/flurry/sdk/ji;->b()V

    invoke-static {}, Lcom/flurry/sdk/jo;->b()V

    invoke-static {}, Lcom/flurry/sdk/jf;->b()V

    invoke-static {}, Lcom/flurry/sdk/jj;->b()V

    invoke-static {}, Lcom/flurry/sdk/jm;->b()V

    invoke-static {}, Lcom/flurry/sdk/jf;->b()V

    invoke-static {}, Lcom/flurry/sdk/jl;->b()V

    invoke-static {}, Lcom/flurry/sdk/ju;->b()V

    invoke-static {}, Lcom/flurry/sdk/lk;->b()V

    invoke-static {}, Lcom/flurry/sdk/lo;->b()V

    invoke-static {}, Lcom/flurry/sdk/kc;->b()V

    const-class v0, Lcom/flurry/sdk/jr;

    invoke-static {v0}, Lcom/flurry/sdk/lf;->b(Ljava/lang/Class;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/flurry/sdk/jr;->b()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d()J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/flurry/sdk/jr;->c()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public e()J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public f()J
    .locals 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/flurry/sdk/jr;->e()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public g()J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/flurry/sdk/jr;->g()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public h()J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/flurry/sdk/jr;->f()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/flurry/sdk/je;->m()Lcom/flurry/sdk/jr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/jr;->j()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/flurry/sdk/jl$a;
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->d()Lcom/flurry/sdk/jl$a;

    move-result-object v0

    return-object v0
.end method
