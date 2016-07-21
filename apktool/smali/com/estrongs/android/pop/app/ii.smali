.class Lcom/estrongs/android/pop/app/ii;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/estrongs/android/pop/app/if;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/if;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ii;->c:Lcom/estrongs/android/pop/app/if;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ii;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/ii;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ii;->c:Lcom/estrongs/android/pop/app/if;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/if;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->q()Z

    move-result v0

    new-instance v2, Lcom/estrongs/android/pop/app/ij;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/ij;-><init>(Lcom/estrongs/android/pop/app/ii;Z)V

    const/4 v0, -0x1

    sget-boolean v1, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v1, :cond_0

    const/4 v0, -0x2

    :cond_0
    new-instance v3, Lcom/estrongs/android/widget/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ii;->c:Lcom/estrongs/android/pop/app/if;

    iget-object v4, v1, Lcom/estrongs/android/pop/app/if;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ii;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v3, v4, v1, v2, v0}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ii;->c:Lcom/estrongs/android/pop/app/if;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/if;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ii;->c:Lcom/estrongs/android/pop/app/if;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/if;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ik;

    invoke-direct {v1, p0, v3}, Lcom/estrongs/android/pop/app/ik;-><init>(Lcom/estrongs/android/pop/app/ii;Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/widget/f;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ii;->c:Lcom/estrongs/android/pop/app/if;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/if;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/il;

    invoke-direct {v1, p0, v3}, Lcom/estrongs/android/pop/app/il;-><init>(Lcom/estrongs/android/pop/app/ii;Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/widget/f;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Lcom/estrongs/android/widget/f;->j()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ii;->a:Ljava/lang/String;

    goto :goto_0
.end method
