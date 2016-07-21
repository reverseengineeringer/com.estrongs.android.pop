.class Lcom/flurry/sdk/ey$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/hi;

.field final synthetic b:Lcom/flurry/sdk/ey;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ey;Lcom/flurry/sdk/hi;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ey$1;->b:Lcom/flurry/sdk/ey;

    iput-object p2, p0, Lcom/flurry/sdk/ey$1;->a:Lcom/flurry/sdk/hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    sget-object v0, Lcom/flurry/sdk/ed;->m:Lcom/flurry/sdk/ed;

    iget-object v1, p0, Lcom/flurry/sdk/ey$1;->b:Lcom/flurry/sdk/ey;

    invoke-static {v1}, Lcom/flurry/sdk/ey;->a(Lcom/flurry/sdk/ey;)Lcom/flurry/sdk/et;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/et;->e()I

    move-result v1

    const-string v2, "Post cancelled"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ec;->a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ey$1;->a:Lcom/flurry/sdk/hi;

    invoke-interface {v0}, Lcom/flurry/sdk/hi;->a()V

    return-void
.end method
