.class public Lcom/dianxinos/library/b/c/g;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/dianxinos/library/b/c/h;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dianxinos/library/b/c/g;->b:I

    iget v0, p0, Lcom/dianxinos/library/b/c/g;->b:I

    new-array v0, v0, [Lcom/dianxinos/library/b/c/h;

    iput-object v0, p0, Lcom/dianxinos/library/b/c/g;->a:[Lcom/dianxinos/library/b/c/h;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/dianxinos/library/b/c/g;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/library/b/c/g;->a:[Lcom/dianxinos/library/b/c/h;

    new-instance v2, Lcom/dianxinos/library/b/c/h;

    invoke-direct {v2, p0}, Lcom/dianxinos/library/b/c/h;-><init>(Lcom/dianxinos/library/b/c/g;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget v0, p0, Lcom/dianxinos/library/b/c/g;->b:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/b/c/g;->a:[Lcom/dianxinos/library/b/c/h;

    aget-object v0, v0, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dianxinos/library/b/c/h;->a(J)V

    :cond_0
    return-void
.end method

.method public b(I)J
    .locals 4

    iget v0, p0, Lcom/dianxinos/library/b/c/g;->b:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/b/c/g;->a:[Lcom/dianxinos/library/b/c/h;

    aget-object v0, v0, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dianxinos/library/b/c/h;->b(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public c(I)F
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/dianxinos/library/b/c/g;->b:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/b/c/g;->a:[Lcom/dianxinos/library/b/c/h;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/dianxinos/library/b/c/h;->a()J

    move-result-wide v0

    long-to-float v0, v0

    :cond_0
    return v0
.end method
