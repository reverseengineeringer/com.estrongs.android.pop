.class Lcom/estrongs/android/ui/dialog/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/t;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/x;->b:Lcom/estrongs/android/ui/dialog/t;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/x;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/x;->b:Lcom/estrongs/android/ui/dialog/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/t;->b(Lcom/estrongs/android/ui/dialog/t;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/x;->a:Ljava/lang/String;

    const-string v2, "application/*"

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method
