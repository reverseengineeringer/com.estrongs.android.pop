.class Lcom/baidu/mobstat/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mobstat/k;


# instance fields
.field private a:Lcom/baidu/mobstat/ay;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/mobstat/ay;->a:Lcom/baidu/mobstat/ay;

    iput-object v0, p0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/ay;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/ay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mobstat/ay;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/ay;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/ay;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ay;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/ay;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ay;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/ay;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/ay;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/at;->a:Lcom/baidu/mobstat/ay;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ay;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
