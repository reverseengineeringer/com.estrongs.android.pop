.class Lcom/flurry/sdk/ew$2;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/eg;

.field final synthetic d:Lcom/flurry/sdk/ew;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ew;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ew$2;->d:Lcom/flurry/sdk/ew;

    iput-object p2, p0, Lcom/flurry/sdk/ew$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/sdk/ew$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/sdk/ew$2;->c:Lcom/flurry/sdk/eg;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/ew$2;->d:Lcom/flurry/sdk/ew;

    invoke-static {v0}, Lcom/flurry/sdk/ew;->b(Lcom/flurry/sdk/ew;)V

    new-instance v0, Lcom/flurry/sdk/ex;

    iget-object v1, p0, Lcom/flurry/sdk/ew$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/sdk/ew$2;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ex;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/ew$2;->d:Lcom/flurry/sdk/ew;

    invoke-static {v1}, Lcom/flurry/sdk/ew;->c(Lcom/flurry/sdk/ew;)Lcom/flurry/sdk/hi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flurry/sdk/hi;->a(Landroid/widget/RelativeLayout;)V

    new-instance v1, Lcom/flurry/sdk/ew$2$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ew$2$1;-><init>(Lcom/flurry/sdk/ew$2;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ex;->setRequestCompleteListener(Lcom/flurry/sdk/ex$b;)V

    return-void
.end method
