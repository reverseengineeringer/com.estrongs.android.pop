.class Lcom/estrongs/android/pop/app/analysis/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/addressbar/f;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/b/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/l;->a:Lcom/estrongs/android/pop/app/analysis/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 3

    const-string v0, "analysisDir"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onclick address bar index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, p3, -0x1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/l;->a:Lcom/estrongs/android/pop/app/analysis/b/k;

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/app/analysis/b/k;->a(Lcom/estrongs/android/pop/app/analysis/b/k;I)V

    :cond_0
    return-void
.end method
