.class public Lcom/estrongs/android/a/am;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Lcom/estrongs/android/a/ak;

.field private final d:[Lcom/estrongs/android/a/aj;

.field private final e:J

.field private final f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/am;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcom/estrongs/android/a/am;->b:J

    iput-object v0, p0, Lcom/estrongs/android/a/am;->c:[Lcom/estrongs/android/a/ak;

    iput-object v0, p0, Lcom/estrongs/android/a/am;->d:[Lcom/estrongs/android/a/aj;

    iput-wide v2, p0, Lcom/estrongs/android/a/am;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/a/am;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/a/am;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/a/am;->b:J

    new-array v0, v2, [Lcom/estrongs/android/a/ak;

    iput-object v0, p0, Lcom/estrongs/android/a/am;->c:[Lcom/estrongs/android/a/ak;

    new-array v0, v2, [Lcom/estrongs/android/a/aj;

    iput-object v0, p0, Lcom/estrongs/android/a/am;->d:[Lcom/estrongs/android/a/aj;

    iput-wide p2, p0, Lcom/estrongs/android/a/am;->e:J

    iput-boolean v2, p0, Lcom/estrongs/android/a/am;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/estrongs/android/a/ak;[Lcom/estrongs/android/a/aj;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/a/am;->a:Ljava/lang/String;

    iput-wide p4, p0, Lcom/estrongs/android/a/am;->b:J

    iput-object p2, p0, Lcom/estrongs/android/a/am;->c:[Lcom/estrongs/android/a/ak;

    iput-object p3, p0, Lcom/estrongs/android/a/am;->d:[Lcom/estrongs/android/a/aj;

    iput-wide p6, p0, Lcom/estrongs/android/a/am;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/a/am;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/am;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/a/am;->h:I

    iput p2, p0, Lcom/estrongs/android/a/am;->g:I

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/am;->b:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/a/am;->e:J

    return-wide v0
.end method

.method public final d()[Lcom/estrongs/android/a/ak;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/am;->c:[Lcom/estrongs/android/a/ak;

    return-object v0
.end method

.method public final e()[Lcom/estrongs/android/a/aj;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/am;->d:[Lcom/estrongs/android/a/aj;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/a/am;->f:Z

    return v0
.end method
