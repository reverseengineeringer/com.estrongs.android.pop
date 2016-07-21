.class Lcom/dianxinos/dxservice/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/a/h;


# direct methods
.method constructor <init>(Lcom/dianxinos/dxservice/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/dxservice/a/i;->a:Lcom/dianxinos/dxservice/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.TokenUtils"

    const-string v1, "enter in reportTokenJob!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/a/i;->a:Lcom/dianxinos/dxservice/a/h;

    iget-object v1, p0, Lcom/dianxinos/dxservice/a/i;->a:Lcom/dianxinos/dxservice/a/h;

    iget-object v2, p0, Lcom/dianxinos/dxservice/a/i;->a:Lcom/dianxinos/dxservice/a/h;

    invoke-static {v2}, Lcom/dianxinos/dxservice/a/h;->a(Lcom/dianxinos/dxservice/a/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dianxinos/dxservice/a/h;->a(Lcom/dianxinos/dxservice/a/h;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/dxservice/a/h;->a(Lcom/dianxinos/dxservice/a/h;Z)Z

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "stat.TokenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/dxservice/a/i;->a:Lcom/dianxinos/dxservice/a/h;

    invoke-static {v2}, Lcom/dianxinos/dxservice/a/h;->b(Lcom/dianxinos/dxservice/a/h;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/dxservice/a/i;->a:Lcom/dianxinos/dxservice/a/h;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/h;->b(Lcom/dianxinos/dxservice/a/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/dxservice/a/i;->a:Lcom/dianxinos/dxservice/a/h;

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/h;->c(Lcom/dianxinos/dxservice/a/h;)V

    :cond_2
    return-void
.end method
