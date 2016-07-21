.class Lcom/flurry/sdk/im$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/im$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/im$1;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/im$1$1;->a:Lcom/flurry/sdk/im$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/io;->a()Lcom/flurry/sdk/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/io;->c()V

    return-void
.end method
