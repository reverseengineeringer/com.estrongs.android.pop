.class Lcom/flurry/sdk/kc$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kb;

.field final synthetic b:Lcom/flurry/sdk/ka;

.field final synthetic c:Lcom/flurry/sdk/kc;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kc;Lcom/flurry/sdk/kb;Lcom/flurry/sdk/ka;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kc$1;->c:Lcom/flurry/sdk/kc;

    iput-object p2, p0, Lcom/flurry/sdk/kc$1;->a:Lcom/flurry/sdk/kb;

    iput-object p3, p0, Lcom/flurry/sdk/kc$1;->b:Lcom/flurry/sdk/ka;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/kc$1;->a:Lcom/flurry/sdk/kb;

    iget-object v1, p0, Lcom/flurry/sdk/kc$1;->b:Lcom/flurry/sdk/ka;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/ka;)V

    return-void
.end method
