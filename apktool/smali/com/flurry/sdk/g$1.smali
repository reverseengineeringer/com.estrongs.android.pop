.class Lcom/flurry/sdk/g$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Lcom/flurry/sdk/s;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Lcom/flurry/sdk/g;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/g;Ljava/lang/String;Landroid/content/Context;ZLcom/flurry/sdk/s;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/g$1;->g:Lcom/flurry/sdk/g;

    iput-object p2, p0, Lcom/flurry/sdk/g$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/flurry/sdk/g$1;->c:Z

    iput-object p5, p0, Lcom/flurry/sdk/g$1;->d:Lcom/flurry/sdk/s;

    iput-boolean p6, p0, Lcom/flurry/sdk/g$1;->e:Z

    iput-boolean p7, p0, Lcom/flurry/sdk/g$1;->f:Z

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/flurry/sdk/g$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/flurry/sdk/g$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/ma;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/flurry/sdk/ma;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/flurry/sdk/ma;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fi;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/flurry/sdk/ma;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/sdk/fi;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/flurry/sdk/g$1;->c:Z

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/g$1;->g:Lcom/flurry/sdk/g;

    iget-object v1, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/g$1;->d:Lcom/flurry/sdk/s;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Landroid/content/Context;Lcom/flurry/sdk/s;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/flurry/sdk/g$1;->d:Lcom/flurry/sdk/s;

    invoke-interface {v2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v2

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->r()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/flurry/sdk/g$1;->g:Lcom/flurry/sdk/g;

    iget-object v2, p0, Lcom/flurry/sdk/g$1;->d:Lcom/flurry/sdk/s;

    iget-boolean v3, p0, Lcom/flurry/sdk/g$1;->c:Z

    iget-boolean v4, p0, Lcom/flurry/sdk/g$1;->e:Z

    invoke-static {v0, v2, v1, v3, v4}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/flurry/sdk/g$1;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/g$1;->d:Lcom/flurry/sdk/s;

    iget-boolean v3, p0, Lcom/flurry/sdk/g$1;->c:Z

    iget-boolean v4, p0, Lcom/flurry/sdk/g$1;->e:Z

    invoke-static {v0, v2, v1, v3, v4}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Lcom/flurry/sdk/s;Ljava/lang/String;ZZ)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/g$1;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/flurry/sdk/g$1;->e:Z

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_7
    const/4 v0, 0x6

    invoke-static {}, Lcom/flurry/sdk/g;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/g$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
