.class Lcom/dianxinos/library/b/b/d/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/b/b/d/q;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dianxinos/library/b/b/d/t;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/b/b/d/t;Lcom/dianxinos/library/b/b/d/q;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/b/b/d/v;->c:Lcom/dianxinos/library/b/b/d/t;

    iput-object p2, p0, Lcom/dianxinos/library/b/b/d/v;->a:Lcom/dianxinos/library/b/b/d/q;

    iput-object p3, p0, Lcom/dianxinos/library/b/b/d/v;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/v;->c:Lcom/dianxinos/library/b/b/d/t;

    invoke-static {v0}, Lcom/dianxinos/library/b/b/d/t;->a(Lcom/dianxinos/library/b/b/d/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/v;->c:Lcom/dianxinos/library/b/b/d/t;

    invoke-static {v0}, Lcom/dianxinos/library/b/b/d/t;->b(Lcom/dianxinos/library/b/b/d/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/v;->a:Lcom/dianxinos/library/b/b/d/q;

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/v;->c:Lcom/dianxinos/library/b/b/d/t;

    invoke-static {v1}, Lcom/dianxinos/library/b/b/d/t;->c(Lcom/dianxinos/library/b/b/d/t;)Lcom/dianxinos/library/b/b/b/d;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dianxinos/library/b/b/b/d;->b(Ljava/lang/String;)Lcom/dianxinos/library/b/b/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/b/b/d/q;->a(Lcom/dianxinos/library/b/b/b/a;)V

    goto :goto_0
.end method
