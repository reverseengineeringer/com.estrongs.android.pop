.class Lcom/estrongs/android/ui/dialog/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/appinfo/r;

.field final synthetic c:I

.field final synthetic d:Lcom/estrongs/android/ui/dialog/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ak;Ljava/util/List;Lcom/estrongs/android/appinfo/r;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/al;->d:Lcom/estrongs/android/ui/dialog/ak;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/al;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/al;->b:Lcom/estrongs/android/appinfo/r;

    iput p4, p0, Lcom/estrongs/android/ui/dialog/al;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/al;->d:Lcom/estrongs/android/ui/dialog/ak;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ak;->a:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/ae;->b:Lcom/estrongs/android/ui/dialog/am;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/al;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/al;->b:Lcom/estrongs/android/appinfo/r;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/al;->b:Lcom/estrongs/android/appinfo/r;

    if-nez v4, :cond_1

    :goto_1
    iget v4, p0, Lcom/estrongs/android/ui/dialog/al;->c:I

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/estrongs/android/ui/dialog/am;->a(Ljava/util/List;III)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/al;->b:Lcom/estrongs/android/appinfo/r;

    iget v1, v1, Lcom/estrongs/android/appinfo/r;->b:I

    goto :goto_1
.end method
