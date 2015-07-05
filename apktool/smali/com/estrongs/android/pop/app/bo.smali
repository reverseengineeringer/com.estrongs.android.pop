.class Lcom/estrongs/android/pop/app/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/bn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bo;->a:Lcom/estrongs/android/pop/app/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bo;->a:Lcom/estrongs/android/pop/app/bn;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bn;->c:Lcom/estrongs/android/pop/app/ESFileSharingActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ESFileSharingActivity;->finish()V

    return-void
.end method
