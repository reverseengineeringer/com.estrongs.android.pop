.class Lcom/estrongs/android/ui/dialog/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/t;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/v;->a:Lcom/estrongs/android/ui/dialog/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Lcom/estrongs/android/ui/dialog/w;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/w;-><init>(Lcom/estrongs/android/ui/dialog/v;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/w;->start()V

    return-void
.end method
