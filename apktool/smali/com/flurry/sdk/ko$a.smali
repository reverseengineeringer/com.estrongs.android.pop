.class Lcom/flurry/sdk/ko$a;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ko;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/ko;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ko$a;->a:Lcom/flurry/sdk/ko;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ko;Lcom/flurry/sdk/ko$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ko$a;-><init>(Lcom/flurry/sdk/ko;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ko;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpRequest timed out. Cancelling."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ko$a;->a:Lcom/flurry/sdk/ko;

    invoke-static {v0}, Lcom/flurry/sdk/ko;->a(Lcom/flurry/sdk/ko;)Lcom/flurry/sdk/kp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/kp;->k()V

    return-void
.end method
