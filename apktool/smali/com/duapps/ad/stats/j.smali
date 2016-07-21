.class Lcom/duapps/ad/stats/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/stats/i;
.implements Lorg/apache/http/client/RedirectHandler;


# instance fields
.field final synthetic a:Lcom/duapps/ad/stats/c;

.field private b:Lcom/duapps/ad/stats/p;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/duapps/ad/stats/c;Lcom/duapps/ad/stats/p;)V
    .locals 1

    iput-object p1, p0, Lcom/duapps/ad/stats/j;->a:Lcom/duapps/ad/stats/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/stats/j;->c:Z

    iput-object p2, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/stats/j;->c:Z

    return-void
.end method

.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/duapps/ad/stats/j;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ToolClickHandler"

    const-string v1, "[Http]Action canceled."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/j;->a:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/u;->g(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x133

    if-ne v0, v1, :cond_8

    :cond_3
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ToolClickHandler"

    const-string v1, "[Http] null URL."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/p;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/stats/j;->a:Lcom/duapps/ad/stats/c;

    iget-object v1, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    iget-object v2, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    invoke-virtual {v2}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duapps/ad/stats/c;->i(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/j;->a:Lcom/duapps/ad/stats/c;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/c;->a()V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/duapps/ad/stats/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Http] Market URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/duapps/ad/stats/j;->a:Lcom/duapps/ad/stats/c;

    iget-object v2, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    invoke-virtual {v1, v2, v0}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/duapps/ad/stats/p;->b(Z)V

    iget-object v1, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    invoke-virtual {v1}, Lcom/duapps/ad/stats/p;->o()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/duapps/ad/stats/j;->a:Lcom/duapps/ad/stats/c;

    iget-object v2, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    invoke-virtual {v1, v2, v0}, Lcom/duapps/ad/stats/c;->h(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/j;->a:Lcom/duapps/ad/stats/c;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/c;->a()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/duapps/ad/stats/j;->a:Lcom/duapps/ad/stats/c;

    iget-object v2, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    invoke-virtual {v1, v2, v0}, Lcom/duapps/ad/stats/c;->c(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Http] non-Market URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    invoke-virtual {v2}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/p;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/stats/j;->a:Lcom/duapps/ad/stats/c;

    iget-object v1, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    iget-object v2, p0, Lcom/duapps/ad/stats/j;->b:Lcom/duapps/ad/stats/p;

    invoke-virtual {v2}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duapps/ad/stats/c;->g(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/j;->a:Lcom/duapps/ad/stats/c;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/c;->a()V

    goto/16 :goto_0
.end method
