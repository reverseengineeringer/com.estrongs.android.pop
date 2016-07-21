.class public Lcom/estrongs/android/scanner/a/f;
.super Lcom/estrongs/android/scanner/a/e;


# instance fields
.field private a:J

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/scanner/a/e;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/scanner/a/f;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/scanner/a/f;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lcom/estrongs/android/scanner/a/e;-><init>(ILjava/lang/String;)V

    iput-wide p2, p0, Lcom/estrongs/android/scanner/a/f;->a:J

    iput-object p5, p0, Lcom/estrongs/android/scanner/a/f;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/scanner/a/f;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/scanner/a/f;->a:J

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/scanner/a/f;->b:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanItemInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
