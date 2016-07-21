.class Lcom/flurry/sdk/ey$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ey;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ey;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ey$2;->a:Lcom/flurry/sdk/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/ey$2;->a:Lcom/flurry/sdk/ey;

    invoke-static {v0}, Lcom/flurry/sdk/ey;->b(Lcom/flurry/sdk/ey;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-object v0, Lcom/flurry/sdk/ed;->m:Lcom/flurry/sdk/ed;

    iget-object v1, p0, Lcom/flurry/sdk/ey$2;->a:Lcom/flurry/sdk/ey;

    invoke-static {v1}, Lcom/flurry/sdk/ey;->a(Lcom/flurry/sdk/ey;)Lcom/flurry/sdk/et;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/et;->e()I

    move-result v1

    const-string v2, "Post cancelled."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    return-void
.end method
