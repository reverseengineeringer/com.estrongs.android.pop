.class Lcom/flurry/sdk/m$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/da;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/flurry/sdk/m;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/da;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/m$1;->d:Lcom/flurry/sdk/m;

    iput-object p2, p0, Lcom/flurry/sdk/m$1;->a:Lcom/flurry/sdk/da;

    iput-object p3, p0, Lcom/flurry/sdk/m$1;->b:Landroid/view/View;

    iput p4, p0, Lcom/flurry/sdk/m$1;->c:I

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v1, p0, Lcom/flurry/sdk/m$1;->d:Lcom/flurry/sdk/m;

    iget-object v2, p0, Lcom/flurry/sdk/m$1;->a:Lcom/flurry/sdk/da;

    iget-object v0, p0, Lcom/flurry/sdk/m$1;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget v3, p0, Lcom/flurry/sdk/m$1;->c:I

    invoke-static {v1, v2, v0, v3}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/m;Lcom/flurry/sdk/da;Landroid/widget/ImageView;I)V

    return-void
.end method
