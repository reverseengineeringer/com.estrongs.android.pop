.class public Lcom/facebook/ads/internal/server/a;
.super Ljava/lang/Object;


# static fields
.field private static final g:Lcom/facebook/ads/internal/util/p;

.field private static final h:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/ads/internal/server/b;

.field private c:Lcom/facebook/ads/internal/server/a$a;

.field private d:Lcom/facebook/ads/internal/dto/e;

.field private e:Lcom/facebook/ads/internal/http/a;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/util/p;

    invoke-direct {v0}, Lcom/facebook/ads/internal/util/p;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/server/a;->g:Lcom/facebook/ads/internal/util/p;

    sget-object v0, Lcom/facebook/ads/internal/server/a;->g:Lcom/facebook/ads/internal/util/p;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/facebook/ads/internal/server/a;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/facebook/ads/internal/server/b;->a()Lcom/facebook/ads/internal/server/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/server/a;->b:Lcom/facebook/ads/internal/server/b;

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/facebook/ads/internal/util/AdInternalSettings;->shouldUseLiveRailEndpoint()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/facebook/ads/internal/util/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "https://ad6.liverail.com/"

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/server/a;->f:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const-string v1, "https://ad6.%s.liverail.com/"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/facebook/ads/internal/util/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "https://graph.facebook.com/network_ads_common/"

    :goto_2
    iput-object v0, p0, Lcom/facebook/ads/internal/server/a;->f:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "https://graph.%s.facebook.com/network_ads_common/"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/http/a;)Lcom/facebook/ads/internal/http/a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/server/a;->e:Lcom/facebook/ads/internal/http/a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/server/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/facebook/ads/internal/b;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a;->c:Lcom/facebook/ads/internal/server/a$a;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/facebook/ads/internal/server/a$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/server/a$4;-><init>(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/server/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/b;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/server/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/server/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/server/d;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a;->c:Lcom/facebook/ads/internal/server/a$a;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/facebook/ads/internal/server/a$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/server/a$3;-><init>(Lcom/facebook/ads/internal/server/a;Lcom/facebook/ads/internal/server/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/server/a;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/server/a;->b:Lcom/facebook/ads/internal/server/b;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/server/b;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/server/c;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/server/a$5;->a:[I

    invoke-virtual {v0}, Lcom/facebook/ads/internal/server/c;->a()Lcom/facebook/ads/internal/server/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/server/c$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/facebook/ads/internal/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/AdErrorType;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/AdErrorType;->getAdErrorWrapper(Ljava/lang/String;)Lcom/facebook/ads/internal/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/b;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast v0, Lcom/facebook/ads/internal/server/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/server/d;->b()Lcom/facebook/ads/internal/dto/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/dto/c;->a()Lcom/facebook/ads/internal/dto/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/dto/d;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/ads/internal/server/a;->d:Lcom/facebook/ads/internal/dto/e;

    invoke-static {v2, v3, v4}, Lcom/facebook/ads/internal/util/d;->a(JLcom/facebook/ads/internal/dto/e;)V

    invoke-virtual {v1}, Lcom/facebook/ads/internal/dto/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/server/a;->d:Lcom/facebook/ads/internal/dto/e;

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/util/d;->a(Ljava/lang/String;Lcom/facebook/ads/internal/dto/e;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/server/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/AdErrorType;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/AdErrorType;->getAdErrorWrapper(Ljava/lang/String;)Lcom/facebook/ads/internal/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/b;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    check-cast v0, Lcom/facebook/ads/internal/server/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/server/e;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/AdErrorType;

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/facebook/ads/internal/AdErrorType;->getAdErrorWrapper(Ljava/lang/String;)Lcom/facebook/ads/internal/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b()Lcom/facebook/ads/internal/http/c;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/server/a$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/server/a$2;-><init>(Lcom/facebook/ads/internal/server/a;)V

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/http/c;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/server/a;->b()Lcom/facebook/ads/internal/http/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/http/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a;->e:Lcom/facebook/ads/internal/http/a;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/dto/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a;->d:Lcom/facebook/ads/internal/dto/e;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/server/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a;->b:Lcom/facebook/ads/internal/server/b;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/server/a;)Lcom/facebook/ads/internal/server/a$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a;->c:Lcom/facebook/ads/internal/server/a$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a;->e:Lcom/facebook/ads/internal/http/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/server/a;->e:Lcom/facebook/ads/internal/http/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/http/a;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/server/a;->e:Lcom/facebook/ads/internal/http/a;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/dto/e;)V
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/server/a;->a()V

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/server/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/b;

    sget-object v1, Lcom/facebook/ads/internal/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    const-string v2, "No network connection"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/b;-><init>(Lcom/facebook/ads/internal/AdErrorType;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/b;)V

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/internal/server/a;->d:Lcom/facebook/ads/internal/dto/e;

    invoke-static {p2}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/dto/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/facebook/ads/internal/util/d;->c(Lcom/facebook/ads/internal/dto/e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/server/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/AdErrorType;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/AdErrorType;->getAdErrorWrapper(Ljava/lang/String;)Lcom/facebook/ads/internal/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/server/a;->a(Lcom/facebook/ads/internal/b;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/server/a;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/facebook/ads/internal/server/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/ads/internal/server/a$1;-><init>(Lcom/facebook/ads/internal/server/a;Landroid/content/Context;Lcom/facebook/ads/internal/dto/e;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public a(Lcom/facebook/ads/internal/server/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/server/a;->c:Lcom/facebook/ads/internal/server/a$a;

    return-void
.end method
