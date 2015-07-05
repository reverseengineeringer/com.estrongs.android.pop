.class Lcom/estrongs/android/ui/e/ho;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/hn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ho;->a:Lcom/estrongs/android/ui/e/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ho;->a:Lcom/estrongs/android/ui/e/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/hn;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u()V

    return-void
.end method
