.class Lcom/flurry/sdk/gf$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gf;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gf$4;->a:Lcom/flurry/sdk/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gf$4;->a:Lcom/flurry/sdk/gf;

    invoke-static {v0}, Lcom/flurry/sdk/gf;->g(Lcom/flurry/sdk/gf;)V

    iget-object v0, p0, Lcom/flurry/sdk/gf$4;->a:Lcom/flurry/sdk/gf;

    invoke-virtual {v0}, Lcom/flurry/sdk/gf;->requestLayout()V

    return-void
.end method
