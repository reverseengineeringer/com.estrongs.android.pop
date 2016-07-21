.class Lcom/estrongs/android/pop/app/ks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ko;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ko;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ks;->a:Lcom/estrongs/android/pop/app/ko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ks;->a:Lcom/estrongs/android/pop/app/ko;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ko;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    return-void
.end method
