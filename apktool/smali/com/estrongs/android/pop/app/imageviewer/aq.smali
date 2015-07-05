.class Lcom/estrongs/android/pop/app/imageviewer/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ap;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/aq;->a:Lcom/estrongs/android/pop/app/imageviewer/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aq;->a:Lcom/estrongs/android/pop/app/imageviewer/ap;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ap;->a(Lcom/estrongs/android/pop/app/imageviewer/ap;)Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aq;->a:Lcom/estrongs/android/pop/app/imageviewer/ap;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;->b(Lcom/estrongs/android/pop/app/imageviewer/al;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aq;->a:Lcom/estrongs/android/pop/app/imageviewer/ap;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ap;->b(Lcom/estrongs/android/pop/app/imageviewer/ap;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aq;->a:Lcom/estrongs/android/pop/app/imageviewer/ap;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ap;->b(Lcom/estrongs/android/pop/app/imageviewer/ap;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
