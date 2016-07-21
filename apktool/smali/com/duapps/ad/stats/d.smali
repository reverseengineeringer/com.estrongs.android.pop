.class Lcom/duapps/ad/stats/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/duapps/ad/stats/c;


# direct methods
.method constructor <init>(Lcom/duapps/ad/stats/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/stats/d;->b:Lcom/duapps/ad/stats/c;

    iput p2, p0, Lcom/duapps/ad/stats/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/stats/d;->b:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->b(Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/base/k;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/stats/d;->b:Lcom/duapps/ad/stats/c;

    iget-object v1, p0, Lcom/duapps/ad/stats/d;->b:Lcom/duapps/ad/stats/c;

    invoke-static {v1}, Lcom/duapps/ad/stats/c;->c(Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/base/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/c;Lcom/duapps/ad/base/k;)Lcom/duapps/ad/base/k;

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->b:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->b(Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/base/k;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/stats/d;->a:I

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/k;->a(I)V

    iget-object v0, p0, Lcom/duapps/ad/stats/d;->b:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->b(Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/base/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/base/k;->show()V

    return-void
.end method
