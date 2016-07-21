.class public Lcom/estrongs/android/a/b/e;
.super Lcom/estrongs/android/a/b/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/h;
    .locals 3

    new-instance v0, Lcom/estrongs/fs/impl/f/a;

    new-instance v1, Lcom/estrongs/fs/impl/local/f;

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/e;->b()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/f/a;-><init>(Lcom/estrongs/fs/h;)V

    return-object v0
.end method
