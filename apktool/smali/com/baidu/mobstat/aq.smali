.class final enum Lcom/baidu/mobstat/aq;
.super Lcom/baidu/mobstat/an;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/mobstat/an;-><init>(Ljava/lang/String;IILcom/baidu/mobstat/ao;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/as;->a(Landroid/content/Context;)Lcom/baidu/mobstat/k;

    move-result-object v1

    new-instance v2, Lcom/baidu/mobstat/bc;

    invoke-direct {v2}, Lcom/baidu/mobstat/bc;-><init>()V

    iput-boolean v4, v2, Lcom/baidu/mobstat/bc;->a:Z

    const-string v3, "E"

    iput-object v3, v2, Lcom/baidu/mobstat/bc;->b:Ljava/lang/String;

    iput-boolean v4, v2, Lcom/baidu/mobstat/bc;->c:Z

    invoke-virtual {v2}, Lcom/baidu/mobstat/bc;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method
