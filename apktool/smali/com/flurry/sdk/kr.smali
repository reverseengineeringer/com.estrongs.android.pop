.class public abstract Lcom/flurry/sdk/kr;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Z

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/kr;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kr;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/flurry/sdk/kr;->e:Ljava/lang/String;

    return-void
.end method

.method public a_()V
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/kr;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/kr;->c:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/kr;->c:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kr;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/kr;->b:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/kr;->f:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kr;->e:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/kr;->f:I

    return v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/kr;->a:J

    return-wide v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/kr;->b:Z

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/kr;->c:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kr;->e:Ljava/lang/String;

    return-object v0
.end method
