.class Lcom/estrongs/android/ui/preference/fragments/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/ui/preference/fragments/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/g;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/j;->b:Lcom/estrongs/android/ui/preference/fragments/g;

    iput-object p2, p0, Lcom/estrongs/android/ui/preference/fragments/j;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/j;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->k()V

    return-void
.end method
