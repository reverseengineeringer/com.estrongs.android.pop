.class Lcom/flurry/sdk/gs$5$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/gs$5;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$5$1;->c:Lcom/flurry/sdk/gs$5;

    iput-object p2, p0, Lcom/flurry/sdk/gs$5$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/gs$5$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/flurry/sdk/gs$5$1;->c:Lcom/flurry/sdk/gs$5;

    iget-object v0, v0, Lcom/flurry/sdk/gs$5;->b:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$5$1;->c:Lcom/flurry/sdk/gs$5;

    iget-object v0, v0, Lcom/flurry/sdk/gs$5;->b:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gs$5$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/gs$5$1;->b:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/flurry/sdk/gs$5$1;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/sdk/he;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
