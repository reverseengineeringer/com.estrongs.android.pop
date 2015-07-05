.class Lcom/estrongs/android/pop/utils/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic b:Lcom/estrongs/android/pop/utils/bn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bn;Lcom/estrongs/android/pop/esclasses/ESActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bt;->b:Lcom/estrongs/android/pop/utils/bn;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bt;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bt;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bt;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    :cond_0
    return-void
.end method
