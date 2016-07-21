.class Lcom/estrongs/android/pop/app/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ct;->a:Lcom/estrongs/android/pop/app/cs;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cs;->b:Lcom/estrongs/android/pop/app/cr;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cr;->a:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->d(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/ui/adapter/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/y;->notifyDataSetChanged()V

    return-void
.end method
