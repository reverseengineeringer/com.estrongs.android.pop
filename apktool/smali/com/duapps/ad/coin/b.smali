.class Lcom/duapps/ad/coin/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/coin/CoinManager;


# direct methods
.method constructor <init>(Lcom/duapps/ad/coin/CoinManager;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/coin/b;->a:Lcom/duapps/ad/coin/CoinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duapps/ad/coin/b;->a:Lcom/duapps/ad/coin/CoinManager;

    invoke-virtual {v0, v1, v1}, Lcom/duapps/ad/coin/CoinManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/duapps/ad/coin/CoinManager$RequestResult;

    move-result-object v0

    iget v1, v0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/coin/b;->a:Lcom/duapps/ad/coin/CoinManager;

    iget v2, v0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a:I

    invoke-virtual {v1, v2}, Lcom/duapps/ad/coin/CoinManager;->a(I)V

    iget-object v1, p0, Lcom/duapps/ad/coin/b;->a:Lcom/duapps/ad/coin/CoinManager;

    invoke-static {v1}, Lcom/duapps/ad/coin/CoinManager;->a(Lcom/duapps/ad/coin/CoinManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "__TOTAL__"

    invoke-static {v1, v0, v2}, Lcom/duapps/ad/coin/CoinManager;->a(Landroid/content/Context;Lcom/duapps/ad/coin/CoinManager$RequestResult;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
