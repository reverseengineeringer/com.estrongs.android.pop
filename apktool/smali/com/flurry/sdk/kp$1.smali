.class Lcom/flurry/sdk/kp$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kp;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kp$1;->a:Lcom/flurry/sdk/kp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kp$1;->a:Lcom/flurry/sdk/kp;

    invoke-static {v0}, Lcom/flurry/sdk/kp;->a(Lcom/flurry/sdk/kp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kp$1;->a:Lcom/flurry/sdk/kp;

    invoke-static {v0}, Lcom/flurry/sdk/kp;->a(Lcom/flurry/sdk/kp;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
