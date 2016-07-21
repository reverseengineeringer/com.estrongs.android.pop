.class Lcom/appsflyer/AppsFlyerLib$DataCollector;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->g:Z

    iput-object p7, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->g:Z

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
