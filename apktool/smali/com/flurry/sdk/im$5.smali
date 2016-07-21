.class Lcom/flurry/sdk/im$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/im;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/im;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/im$5;->a:Lcom/flurry/sdk/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/im;->c()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/im;->d:Lcom/flurry/sdk/jz;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/im;->f()V

    :cond_0
    sget-object v1, Lcom/flurry/sdk/im;->d:Lcom/flurry/sdk/jz;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Object;)V

    return-void
.end method
