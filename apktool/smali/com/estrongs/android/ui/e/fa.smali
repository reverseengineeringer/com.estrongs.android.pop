.class Lcom/estrongs/android/ui/e/fa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ez;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ez;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fa;->a:Lcom/estrongs/android/ui/e/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
