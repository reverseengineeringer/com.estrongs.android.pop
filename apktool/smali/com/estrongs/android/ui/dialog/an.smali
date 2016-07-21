.class Lcom/estrongs/android/ui/dialog/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/appinfo/s;

.field final synthetic c:I

.field final synthetic d:Lcom/estrongs/android/ui/dialog/am;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/am;Ljava/util/List;Lcom/estrongs/android/appinfo/s;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/an;->d:Lcom/estrongs/android/ui/dialog/am;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/an;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/an;->b:Lcom/estrongs/android/appinfo/s;

    iput p4, p0, Lcom/estrongs/android/ui/dialog/an;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/an;->d:Lcom/estrongs/android/ui/dialog/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/am;->a:Lcom/estrongs/android/ui/dialog/ag;

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/ag;->b:Lcom/estrongs/android/ui/dialog/ao;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/an;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/an;->b:Lcom/estrongs/android/appinfo/s;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/an;->b:Lcom/estrongs/android/appinfo/s;

    if-nez v4, :cond_1

    :goto_1
    iget v4, p0, Lcom/estrongs/android/ui/dialog/an;->c:I

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/estrongs/android/ui/dialog/ao;->a(Ljava/util/List;III)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/an;->b:Lcom/estrongs/android/appinfo/s;

    iget v1, v1, Lcom/estrongs/android/appinfo/s;->b:I

    goto :goto_1
.end method
