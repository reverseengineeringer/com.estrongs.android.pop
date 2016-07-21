.class Lcom/estrongs/android/ui/e/jd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/c/i;

.field final synthetic b:Lcom/estrongs/android/ui/e/jc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/jc;Lcom/estrongs/android/pop/app/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/jd;->b:Lcom/estrongs/android/ui/e/jc;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/jd;->a:Lcom/estrongs/android/pop/app/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/jd;->b:Lcom/estrongs/android/ui/e/jc;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/jc;->a:Lcom/estrongs/android/ui/e/iq;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/iq;->a(Lcom/estrongs/android/ui/e/iq;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/jd;->a:Lcom/estrongs/android/pop/app/c/i;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/e/iq;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
