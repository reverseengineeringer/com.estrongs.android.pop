.class public Lcom/estrongs/android/a/b/m;
.super Lcom/estrongs/android/a/b/a;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
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

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/a/b/m;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;>;IIJ)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/a/b/a;-><init>(IIJ)V

    iput-object p1, p0, Lcom/estrongs/android/a/b/m;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/a/b/m;->a:Ljava/util/Map;

    return-object v0
.end method
