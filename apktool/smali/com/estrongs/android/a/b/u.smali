.class public Lcom/estrongs/android/a/b/u;
.super Lcom/estrongs/android/a/b/a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/a/b/a;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/a/b/u;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;>;IIJ)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/a/b/a;-><init>(IIJ)V

    iput-object p1, p0, Lcom/estrongs/android/a/b/u;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/a/b/u;->a:Ljava/util/List;

    return-object v0
.end method
