.class public Lcom/dianxinos/dxservice/stat/am;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/dianxinos/dxservice/stat/am;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x3

    const/4 v1, 0x1

    new-instance v0, Lcom/dianxinos/dxservice/stat/am;

    const/16 v2, 0x9

    const-string v4, "sys"

    const-string v5, "crash"

    invoke-static {v4, v1, v5}, Lcom/dianxinos/dxservice/stat/t;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/dxservice/stat/am;-><init>(IIILjava/lang/String;I)V

    sput-object v0, Lcom/dianxinos/dxservice/stat/am;->a:Lcom/dianxinos/dxservice/stat/am;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dianxinos/dxservice/stat/am;->b:I

    iput p2, p0, Lcom/dianxinos/dxservice/stat/am;->c:I

    iput p3, p0, Lcom/dianxinos/dxservice/stat/am;->d:I

    iput-object p4, p0, Lcom/dianxinos/dxservice/stat/am;->e:Ljava/lang/String;

    iput p5, p0, Lcom/dianxinos/dxservice/stat/am;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/dianxinos/dxservice/stat/am;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/dianxinos/dxservice/stat/am;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/dianxinos/dxservice/stat/am;->d:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/am;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/dianxinos/dxservice/stat/am;->f:I

    return v0
.end method
