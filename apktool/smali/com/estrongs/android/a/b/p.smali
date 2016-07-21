.class public Lcom/estrongs/android/a/b/p;
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
    .locals 2

    new-instance v0, Lcom/estrongs/fs/impl/n/a;

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/p;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/n/a;-><init>(Ljava/io/File;)V

    return-object v0
.end method
