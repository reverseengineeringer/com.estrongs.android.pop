.class Lcom/flurry/sdk/am$4$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/am$4;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/am$4;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/am$4$1;->a:Lcom/flurry/sdk/am$4;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/am$4$1;->a:Lcom/flurry/sdk/am$4;

    iget-object v0, v0, Lcom/flurry/sdk/am$4;->c:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->n(Lcom/flurry/sdk/am;)V

    return-void
.end method
