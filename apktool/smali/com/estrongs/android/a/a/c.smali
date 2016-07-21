.class public Lcom/estrongs/android/a/a/c;
.super Lcom/estrongs/android/a/a/k;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/a/a/k;-><init>()V

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/estrongs/android/a/a/c;->a:J

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/a/b/q;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/a/b/l;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/estrongs/android/a/a/c;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
