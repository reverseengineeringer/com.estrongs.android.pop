.class Lcom/estrongs/android/pop/app/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/at;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/at;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/au;->a:Lcom/estrongs/android/pop/app/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/au;->a:Lcom/estrongs/android/pop/app/at;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/at;->b:Lcom/estrongs/android/pop/app/DownloaderActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/au;->a:Lcom/estrongs/android/pop/app/at;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/at;->b:Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Lcom/estrongs/android/pop/app/DownloaderActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
