.class Lcom/estrongs/android/pop/app/lj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/SaveToESActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/SaveToESActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/lj;->a:Lcom/estrongs/android/pop/app/SaveToESActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lj;->a:Lcom/estrongs/android/pop/app/SaveToESActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/SaveToESActivity;->finish()V

    return-void
.end method
