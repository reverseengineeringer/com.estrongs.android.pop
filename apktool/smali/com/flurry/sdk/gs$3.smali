.class Lcom/flurry/sdk/gs$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/a;

.field final synthetic b:I

.field final synthetic c:Lcom/flurry/sdk/gs;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$3;->c:Lcom/flurry/sdk/gs;

    iput-object p2, p0, Lcom/flurry/sdk/gs$3;->a:Lcom/flurry/sdk/a;

    iput p3, p0, Lcom/flurry/sdk/gs$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sourceEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gs$3;->a:Lcom/flurry/sdk/a;

    invoke-virtual {v2}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/b;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bb;

    invoke-virtual {v2}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/flurry/sdk/gs$3;->c:Lcom/flurry/sdk/gs;

    sget-object v2, Lcom/flurry/sdk/bb;->t:Lcom/flurry/sdk/bb;

    iget-object v3, p0, Lcom/flurry/sdk/gs$3;->c:Lcom/flurry/sdk/gs;

    invoke-virtual {v3}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    iget v4, p0, Lcom/flurry/sdk/gs$3;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$3;->c:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->isViewAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/flurry/sdk/gs$3;->c:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->b(Lcom/flurry/sdk/gs;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$3;->c:Lcom/flurry/sdk/gs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs$3;->c:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting fAlertDialog to null."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs$3;->c:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs$3;->c:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/gs$3;->c:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->d(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/gh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gh;->a(I)V

    :cond_1
    return-void
.end method
