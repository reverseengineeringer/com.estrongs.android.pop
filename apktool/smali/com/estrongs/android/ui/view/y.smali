.class Lcom/estrongs/android/ui/view/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/y;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/y;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->finish()V

    return-void
.end method
