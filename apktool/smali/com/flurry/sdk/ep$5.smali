.class final Lcom/flurry/sdk/ep$5;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ek;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/flurry/sdk/ek$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ek;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ek$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ep$5;->a:Lcom/flurry/sdk/ek;

    iput-object p2, p0, Lcom/flurry/sdk/ep$5;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/ep$5;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/flurry/sdk/ep$5;->d:Lcom/flurry/sdk/ek$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/ep$5;->a:Lcom/flurry/sdk/ek;

    iget-object v1, p0, Lcom/flurry/sdk/ep$5;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/ep$5;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/flurry/sdk/ep$5;->d:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/ek;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/ek$a;)V

    return-void
.end method
