.class Lcom/estrongs/android/view/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/bx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cc;->a:Lcom/estrongs/android/view/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
