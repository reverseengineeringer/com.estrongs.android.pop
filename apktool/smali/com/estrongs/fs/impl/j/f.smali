.class public Lcom/estrongs/fs/impl/j/f;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/j/f;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/j/f;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/fs/impl/j/f;->a:J

    iget-wide v2, p0, Lcom/estrongs/fs/impl/j/f;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
