.class Lcom/estrongs/fs/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/m;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/o;->a:Lcom/estrongs/fs/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
