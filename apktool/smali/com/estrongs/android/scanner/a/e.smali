.class public abstract Lcom/estrongs/android/scanner/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/scanner/a/e;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/scanner/a/e;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/a/e;->d:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/estrongs/android/scanner/a/e;->a:I

    iput-object p2, p0, Lcom/estrongs/android/scanner/a/e;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/a/e;->d:Z

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/a/e;->e:Z

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/a/e;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/a/e;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/scanner/a/e;->f:Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/scanner/a/e;->e:Z

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/scanner/a/e;->a:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/scanner/a/e;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/scanner/a/e;->f:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/a/e;->c:Ljava/lang/String;

    return-object v0
.end method
