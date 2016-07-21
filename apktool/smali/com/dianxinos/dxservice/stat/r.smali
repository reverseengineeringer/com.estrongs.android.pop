.class public Lcom/dianxinos/dxservice/stat/r;
.super Lcom/dianxinos/dxservice/stat/j;


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dianxinos/dxservice/stat/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/j;-><init>(Lcom/dianxinos/dxservice/stat/j;)V

    iput-object p3, p0, Lcom/dianxinos/dxservice/stat/r;->m:Ljava/lang/String;

    iput p4, p0, Lcom/dianxinos/dxservice/stat/r;->n:I

    iput-object p2, p0, Lcom/dianxinos/dxservice/stat/r;->l:Ljava/lang/String;

    iput-object p5, p0, Lcom/dianxinos/dxservice/stat/r;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/r;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/r;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/dianxinos/dxservice/stat/r;->n:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/r;->o:Ljava/lang/String;

    return-object v0
.end method
