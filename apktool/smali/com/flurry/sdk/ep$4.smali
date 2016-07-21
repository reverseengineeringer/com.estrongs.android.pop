.class final Lcom/flurry/sdk/ep$4;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/eq;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/flurry/sdk/eq$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eq;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/eq$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ep$4;->a:Lcom/flurry/sdk/eq;

    iput-object p2, p0, Lcom/flurry/sdk/ep$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/ep$4;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/flurry/sdk/ep$4;->d:Lcom/flurry/sdk/eq$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/ep$4;->a:Lcom/flurry/sdk/eq;

    iget-object v1, p0, Lcom/flurry/sdk/ep$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/ep$4;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/flurry/sdk/ep$4;->d:Lcom/flurry/sdk/eq$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/eq;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/eq$a;)V

    return-void
.end method
