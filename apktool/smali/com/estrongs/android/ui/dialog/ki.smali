.class Lcom/estrongs/android/ui/dialog/ki;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/kh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ki;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ki;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kh;->dismiss()V

    return-void
.end method
