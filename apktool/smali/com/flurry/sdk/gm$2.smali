.class Lcom/flurry/sdk/gm$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gm;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gm;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gm$2;->a:Lcom/flurry/sdk/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gm$2;->a:Lcom/flurry/sdk/gm;

    invoke-static {v0}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gm;)Lcom/flurry/sdk/gp$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/gp$a;->v()V

    iget-object v0, p0, Lcom/flurry/sdk/gm$2;->a:Lcom/flurry/sdk/gm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/gm;->a(Lcom/flurry/sdk/gm;Z)Z

    return-void
.end method
