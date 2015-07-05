.class Lcom/estrongs/android/pop/app/b/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/pop/app/b/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/ad;Landroid/widget/EditText;Landroid/widget/EditText;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/am;->d:Lcom/estrongs/android/pop/app/b/ad;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/am;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/b/am;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/b/am;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/am;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/am;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/am;->d:Lcom/estrongs/android/pop/app/b/ad;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/am;->c:[Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/b/am;->d:Lcom/estrongs/android/pop/app/b/ad;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/b/ad;->b(Lcom/estrongs/android/pop/app/b/ad;)I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/b/am;->c:[Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/b/am;->d:Lcom/estrongs/android/pop/app/b/ad;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/b/ad;->a(Lcom/estrongs/android/pop/app/b/ad;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/estrongs/android/pop/app/b/ad;->a(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method
