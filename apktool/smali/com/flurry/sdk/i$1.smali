.class Lcom/flurry/sdk/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kb",
        "<",
        "Lcom/flurry/sdk/jv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/i;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/i;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jv;)V
    .locals 2

    sget-object v0, Lcom/flurry/sdk/jv$a;->c:Lcom/flurry/sdk/jv$a;

    iget-object v1, p1, Lcom/flurry/sdk/jv;->b:Lcom/flurry/sdk/jv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/q;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/jv;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->b(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/w;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/jv;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/jv$a;->d:Lcom/flurry/sdk/jv$a;

    iget-object v1, p1, Lcom/flurry/sdk/jv;->b:Lcom/flurry/sdk/jv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/q;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/jv;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->b(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/w;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/jv;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/flurry/sdk/jv$a;->b:Lcom/flurry/sdk/jv$a;

    iget-object v1, p1, Lcom/flurry/sdk/jv;->b:Lcom/flurry/sdk/jv$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jv$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/q;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/jv;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/q;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v0}, Lcom/flurry/sdk/i;->b(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/w;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/sdk/jv;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/ka;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/jv;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/i$1;->a(Lcom/flurry/sdk/jv;)V

    return-void
.end method
