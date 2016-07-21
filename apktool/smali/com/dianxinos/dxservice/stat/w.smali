.class Lcom/dianxinos/dxservice/stat/w;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/stat/v;

.field private final b:Lorg/json/JSONArray;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/dianxinos/dxservice/stat/v;Lorg/json/JSONArray;J)V
    .locals 1

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/w;->a:Lcom/dianxinos/dxservice/stat/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dianxinos/dxservice/stat/w;->b:Lorg/json/JSONArray;

    iput-wide p3, p0, Lcom/dianxinos/dxservice/stat/w;->c:J

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/w;->b:Lorg/json/JSONArray;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/dianxinos/dxservice/stat/w;->c:J

    return-wide v0
.end method
