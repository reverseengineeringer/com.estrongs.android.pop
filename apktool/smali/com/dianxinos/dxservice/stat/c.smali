.class Lcom/dianxinos/dxservice/stat/c;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/dianxinos/dxservice/stat/b;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/dianxinos/dxservice/stat/b;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/c;->a:Lcom/dianxinos/dxservice/stat/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dianxinos/dxservice/stat/c;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/dianxinos/dxservice/stat/c;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/dianxinos/dxservice/stat/c;->c:J

    return-wide v0
.end method
