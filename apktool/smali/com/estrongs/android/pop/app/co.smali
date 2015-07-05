.class Lcom/estrongs/android/pop/app/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/co;->a:Lcom/estrongs/android/pop/app/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/co;->a:Lcom/estrongs/android/pop/app/cn;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cn;->b:Lcom/estrongs/android/pop/app/cm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cm;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->a(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/ui/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/w;->notifyDataSetChanged()V

    return-void
.end method
