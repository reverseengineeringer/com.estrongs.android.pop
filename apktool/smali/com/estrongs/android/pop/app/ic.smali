.class Lcom/estrongs/android/pop/app/ic;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/pop/app/hz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/hz;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ic;->b:Lcom/estrongs/android/pop/app/hz;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ic;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ic;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->k()V

    return-void
.end method
