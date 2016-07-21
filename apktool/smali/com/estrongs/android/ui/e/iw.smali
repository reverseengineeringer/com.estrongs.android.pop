.class Lcom/estrongs/android/ui/e/iw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/iv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/iv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/iw;->a:Lcom/estrongs/android/ui/e/iv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/iw;->a:Lcom/estrongs/android/ui/e/iv;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/iv;->a:Lcom/estrongs/android/ui/e/iq;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/iq;->a(Lcom/estrongs/android/ui/e/iq;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z()V

    return-void
.end method
