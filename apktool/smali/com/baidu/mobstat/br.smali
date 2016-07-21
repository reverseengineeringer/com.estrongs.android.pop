.class Lcom/baidu/mobstat/br;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/bp;


# direct methods
.method private constructor <init>(Lcom/baidu/mobstat/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/br;->a:Lcom/baidu/mobstat/bp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobstat/bp;Lcom/baidu/mobstat/bq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/br;-><init>(Lcom/baidu/mobstat/bp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "**************load cache start********"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mobstat/br;->a:Lcom/baidu/mobstat/bp;

    iget-object v1, p0, Lcom/baidu/mobstat/br;->a:Lcom/baidu/mobstat/bp;

    invoke-static {v1}, Lcom/baidu/mobstat/bp;->a(Lcom/baidu/mobstat/bp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bp;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/bs;->a()Lcom/baidu/mobstat/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/br;->a:Lcom/baidu/mobstat/bp;

    invoke-static {v1}, Lcom/baidu/mobstat/bp;->a(Lcom/baidu/mobstat/bp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bs;->b(Landroid/content/Context;)V

    const-string v0, "**************load cache end********"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    return-void
.end method
