.class Lcom/estrongs/android/ui/e/de;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/dd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/de;->a:Lcom/estrongs/android/ui/e/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/de;->a:Lcom/estrongs/android/ui/e/dd;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/dd;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/de;->a:Lcom/estrongs/android/ui/e/dd;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/dd;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f080422

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
