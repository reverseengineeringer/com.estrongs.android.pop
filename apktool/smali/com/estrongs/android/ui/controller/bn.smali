.class Lcom/estrongs/android/ui/controller/bn;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/bm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/bn;->a:Lcom/estrongs/android/ui/controller/bm;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Cleaner_Mem_Threshold_Percent"

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/bn;->a:Lcom/estrongs/android/ui/controller/bm;

    invoke-static {v1}, Lcom/estrongs/android/ui/controller/bm;->a(Lcom/estrongs/android/ui/controller/bm;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/cleaner/a/a/c;->b(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/bn;->a:Lcom/estrongs/android/ui/controller/bm;

    invoke-static {v2}, Lcom/estrongs/android/ui/controller/bm;->b(Lcom/estrongs/android/ui/controller/bm;)Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/controller/bo;

    invoke-direct {v3, p0, v0, v1}, Lcom/estrongs/android/ui/controller/bo;-><init>(Lcom/estrongs/android/ui/controller/bn;FF)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
