.class Lcom/flurry/sdk/et$4;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/et;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/et;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/et$4;->a:Lcom/flurry/sdk/et;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/et$4;->a:Lcom/flurry/sdk/et;

    invoke-static {v0}, Lcom/flurry/sdk/et;->a(Lcom/flurry/sdk/et;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/et$4;->a:Lcom/flurry/sdk/et;

    invoke-static {v0}, Lcom/flurry/sdk/et;->a(Lcom/flurry/sdk/et;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
