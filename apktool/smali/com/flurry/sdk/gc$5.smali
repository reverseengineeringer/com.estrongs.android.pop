.class Lcom/flurry/sdk/gc$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gc;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gc;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gc$5;->a:Lcom/flurry/sdk/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc$5;->a:Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Lcom/flurry/sdk/gc;->w()V

    iget-object v0, p0, Lcom/flurry/sdk/gc$5;->a:Lcom/flurry/sdk/gc;

    invoke-static {v0}, Lcom/flurry/sdk/gc;->c(Lcom/flurry/sdk/gc;)Lcom/flurry/sdk/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc$5;->a:Lcom/flurry/sdk/gc;

    invoke-static {v0}, Lcom/flurry/sdk/gc;->c(Lcom/flurry/sdk/gc;)Lcom/flurry/sdk/s;

    move-result-object v0

    instance-of v0, v0, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc$5;->a:Lcom/flurry/sdk/gc;

    invoke-static {v0}, Lcom/flurry/sdk/gc;->c(Lcom/flurry/sdk/gc;)Lcom/flurry/sdk/s;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->H()V

    :cond_0
    return-void
.end method
