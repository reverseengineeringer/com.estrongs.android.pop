.class Lcom/estrongs/android/ui/e/ac;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/e/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ab;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ac;->b:Lcom/estrongs/android/ui/e/ab;

    iput p2, p0, Lcom/estrongs/android/ui/e/ac;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ac;->b:Lcom/estrongs/android/ui/e/ab;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ab;->a:Lcom/estrongs/android/ui/e/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/aa;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/h;

    iget v1, p0, Lcom/estrongs/android/ui/e/ac;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
