.class Lcom/estrongs/android/pop/app/a/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/aa;->a:Lcom/estrongs/android/pop/app/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/aa;->a:Lcom/estrongs/android/pop/app/a/z;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/z;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v1

    if-nez p2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/aa;->a:Lcom/estrongs/android/pop/app/a/z;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/a/z;->a:Lcom/estrongs/android/pop/app/a/e;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;Ljava/lang/String;I)V

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
