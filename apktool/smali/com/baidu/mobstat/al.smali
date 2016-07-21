.class Lcom/baidu/mobstat/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/baidu/mobstat/ak;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ak;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/al;->c:Lcom/baidu/mobstat/ak;

    iput-object p2, p0, Lcom/baidu/mobstat/al;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/al;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/al;->c:Lcom/baidu/mobstat/ak;

    iget-object v1, p0, Lcom/baidu/mobstat/al;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ak;->a(Lcom/baidu/mobstat/ak;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mobstat/al;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/al;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/al;->c:Lcom/baidu/mobstat/ak;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/ak;->a(Lcom/baidu/mobstat/ak;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/bb;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
