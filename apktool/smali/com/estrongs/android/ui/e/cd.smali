.class Lcom/estrongs/android/ui/e/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cd;->a:Lcom/estrongs/android/ui/e/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cd;->a:Lcom/estrongs/android/ui/e/cb;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cb;->a(Lcom/estrongs/android/ui/e/cb;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()V

    return-void
.end method
