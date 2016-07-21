.class Lcom/flurry/sdk/jb$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jb$7;->c:Lcom/flurry/sdk/jb;

    iput-object p2, p0, Lcom/flurry/sdk/jb$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/jb$7;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->c()Lcom/flurry/sdk/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jb$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/jb$7;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ig;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
