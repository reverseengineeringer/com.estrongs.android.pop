.class public Lcom/flurry/sdk/ik;
.super Ljava/lang/Object;


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Z

.field public e:I

.field public f:Lcom/flurry/sdk/il;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:J

.field public j:Z

.field public k:J

.field public l:Lcom/flurry/sdk/ij;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/ik;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ik;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/ij;JJI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/ik;->k:J

    iput-object p1, p0, Lcom/flurry/sdk/ik;->l:Lcom/flurry/sdk/ij;

    iput-wide p2, p0, Lcom/flurry/sdk/ik;->b:J

    iput-wide p4, p0, Lcom/flurry/sdk/ik;->c:J

    iput p6, p0, Lcom/flurry/sdk/ik;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/ik;->e:I

    sget-object v0, Lcom/flurry/sdk/il;->d:Lcom/flurry/sdk/il;

    iput-object v0, p0, Lcom/flurry/sdk/ik;->f:Lcom/flurry/sdk/il;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/ik;->l:Lcom/flurry/sdk/ij;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ij;->a(Lcom/flurry/sdk/ik;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/ik;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ik;->l:Lcom/flurry/sdk/ij;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ij;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    const-wide/16 v2, 0x0

    if-gez p1, :cond_1

    iget-wide v0, p0, Lcom/flurry/sdk/ik;->k:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iput-wide v2, p0, Lcom/flurry/sdk/ik;->k:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/flurry/sdk/ik;->k:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/ik;->k:J

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ik;->l:Lcom/flurry/sdk/ij;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ij;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ik;->l:Lcom/flurry/sdk/ij;

    invoke-virtual {v0}, Lcom/flurry/sdk/ij;->c()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/ik;->l:Lcom/flurry/sdk/ij;

    iget v1, p0, Lcom/flurry/sdk/ik;->h:I

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ij;->a(I)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ik;->l:Lcom/flurry/sdk/ij;

    invoke-virtual {v0}, Lcom/flurry/sdk/ij;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ik;->l:Lcom/flurry/sdk/ij;

    invoke-virtual {v0}, Lcom/flurry/sdk/ij;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ik;->l:Lcom/flurry/sdk/ij;

    invoke-virtual {v0}, Lcom/flurry/sdk/ij;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ik;->l:Lcom/flurry/sdk/ij;

    invoke-virtual {v0}, Lcom/flurry/sdk/ij;->b()V

    return-void
.end method
