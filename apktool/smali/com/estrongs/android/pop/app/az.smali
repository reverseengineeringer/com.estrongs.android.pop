.class Lcom/estrongs/android/pop/app/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/DownloaderActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/DownloaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/az;->a:Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->finish()V

    return-void
.end method
