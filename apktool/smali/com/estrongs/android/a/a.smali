.class public final Lcom/estrongs/android/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Lcom/estrongs/android/a/b/l;

.field private final c:[Lcom/estrongs/android/a/b/k;

.field private final d:J

.field private final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/estrongs/android/a/b/l;[Lcom/estrongs/android/a/b/k;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/a/a;->b:[Lcom/estrongs/android/a/b/l;

    iput-object p3, p0, Lcom/estrongs/android/a/a;->c:[Lcom/estrongs/android/a/b/k;

    iput-wide p4, p0, Lcom/estrongs/android/a/a;->d:J

    iput-wide p6, p0, Lcom/estrongs/android/a/a;->e:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[Lcom/estrongs/android/a/b/l;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a;->b:[Lcom/estrongs/android/a/b/l;

    return-object v0
.end method

.method public final c()[Lcom/estrongs/android/a/b/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a;->c:[Lcom/estrongs/android/a/b/k;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/a;->d:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a;->b:[Lcom/estrongs/android/a/b/l;

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/a;->c:[Lcom/estrongs/android/a/b/k;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
