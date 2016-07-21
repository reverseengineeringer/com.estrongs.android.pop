.class Lcom/estrongs/android/ui/e/r;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/e/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/q;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/r;->b:Lcom/estrongs/android/ui/e/q;

    iput p2, p0, Lcom/estrongs/android/ui/e/r;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/r;->b:Lcom/estrongs/android/ui/e/q;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/q;->a:Lcom/estrongs/android/ui/e/p;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/h;

    iget v1, p0, Lcom/estrongs/android/ui/e/r;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
