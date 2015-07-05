.class Lcom/estrongs/android/ui/e/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/o;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/o;->a(Lcom/estrongs/android/ui/e/o;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->o()V

    return-void
.end method
