.class Lcom/flurry/sdk/m$4;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/da;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/flurry/sdk/s;

.field final synthetic d:Lcom/flurry/sdk/m;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/da;Landroid/view/ViewGroup;Lcom/flurry/sdk/s;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/m$4;->d:Lcom/flurry/sdk/m;

    iput-object p2, p0, Lcom/flurry/sdk/m$4;->a:Lcom/flurry/sdk/da;

    iput-object p3, p0, Lcom/flurry/sdk/m$4;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/flurry/sdk/m$4;->c:Lcom/flurry/sdk/s;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v1, p0, Lcom/flurry/sdk/m$4;->d:Lcom/flurry/sdk/m;

    iget-object v2, p0, Lcom/flurry/sdk/m$4;->a:Lcom/flurry/sdk/da;

    iget-object v3, p0, Lcom/flurry/sdk/m$4;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/flurry/sdk/m$4;->c:Lcom/flurry/sdk/s;

    check-cast v0, Lcom/flurry/sdk/x;

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/m;Lcom/flurry/sdk/da;Landroid/view/ViewGroup;Lcom/flurry/sdk/x;)V

    return-void
.end method
