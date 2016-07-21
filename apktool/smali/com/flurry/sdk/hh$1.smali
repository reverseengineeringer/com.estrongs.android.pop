.class Lcom/flurry/sdk/hh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/hh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hh;I)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/hh$1;->b:Lcom/flurry/sdk/hh;

    iput p2, p0, Lcom/flurry/sdk/hh$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/hh$1;->b:Lcom/flurry/sdk/hh;

    iget v1, p0, Lcom/flurry/sdk/hh$1;->a:I

    invoke-static {v0, v1}, Lcom/flurry/sdk/hh;->a(Lcom/flurry/sdk/hh;I)V

    return-void
.end method
