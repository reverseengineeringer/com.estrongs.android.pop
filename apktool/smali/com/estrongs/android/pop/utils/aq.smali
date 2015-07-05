.class final Lcom/estrongs/android/pop/utils/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/aq;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Lcom/estrongs/android/ui/pcs/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/aq;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/o;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/o;->show()V

    return-void
.end method
