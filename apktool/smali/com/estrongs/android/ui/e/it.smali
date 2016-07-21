.class Lcom/estrongs/android/ui/e/it;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/is;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/is;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/ui/e/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/ui/e/is;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/is;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/it;->a:Lcom/estrongs/android/ui/e/is;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/is;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v2, 0x7f0806ca

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
