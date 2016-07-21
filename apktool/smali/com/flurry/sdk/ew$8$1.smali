.class Lcom/flurry/sdk/ew$8$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ew$8;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ew$8;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ew$8$1;->a:Lcom/flurry/sdk/ew$8;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/ew;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load view in 10 seconds."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ew$8$1;->a:Lcom/flurry/sdk/ew$8;

    iget-object v0, v0, Lcom/flurry/sdk/ew$8;->a:Lcom/flurry/sdk/ew;

    invoke-static {v0}, Lcom/flurry/sdk/ew;->g(Lcom/flurry/sdk/ew;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ew$8$1;->a:Lcom/flurry/sdk/ew$8;

    iget-object v0, v0, Lcom/flurry/sdk/ew$8;->a:Lcom/flurry/sdk/ew;

    invoke-static {v0}, Lcom/flurry/sdk/ew;->g(Lcom/flurry/sdk/ew;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ew$8$1;->a:Lcom/flurry/sdk/ew$8;

    iget-object v0, v0, Lcom/flurry/sdk/ew$8;->a:Lcom/flurry/sdk/ew;

    sget-object v1, Lcom/flurry/sdk/ew$a;->g:Lcom/flurry/sdk/ew$a;

    invoke-static {v0, v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;Lcom/flurry/sdk/ew$a;)V

    sget-object v0, Lcom/flurry/sdk/ed;->n:Lcom/flurry/sdk/ed;

    iget-object v1, p0, Lcom/flurry/sdk/ew$8$1;->a:Lcom/flurry/sdk/ew$8;

    iget-object v1, v1, Lcom/flurry/sdk/ew$8;->a:Lcom/flurry/sdk/ew;

    invoke-static {v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;)I

    move-result v1

    const-string v2, "Request timed out"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ew$8$1;->a:Lcom/flurry/sdk/ew$8;

    iget-object v0, v0, Lcom/flurry/sdk/ew$8;->a:Lcom/flurry/sdk/ew;

    invoke-static {v0}, Lcom/flurry/sdk/ew;->b(Lcom/flurry/sdk/ew;)V

    iget-object v0, p0, Lcom/flurry/sdk/ew$8$1;->a:Lcom/flurry/sdk/ew$8;

    iget-object v0, v0, Lcom/flurry/sdk/ew$8;->a:Lcom/flurry/sdk/ew;

    invoke-static {v0}, Lcom/flurry/sdk/ew;->c(Lcom/flurry/sdk/ew;)Lcom/flurry/sdk/hi;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/hi;->a()V

    return-void
.end method
