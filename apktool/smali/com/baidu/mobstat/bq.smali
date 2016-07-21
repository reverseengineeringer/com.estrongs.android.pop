.class Lcom/baidu/mobstat/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/bp;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/bp;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/bq;->b:Lcom/baidu/mobstat/bp;

    iput-object p2, p0, Lcom/baidu/mobstat/bq;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/an;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/baidu/mobstat/an;->a(I)Lcom/baidu/mobstat/an;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/bq;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/an;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/bq;->b:Lcom/baidu/mobstat/bp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/bp;->a(Lcom/baidu/mobstat/bp;Z)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
