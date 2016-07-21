.class Lcom/estrongs/android/pop/utils/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Lcom/estrongs/android/ui/dialog/ci;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/util/List;

.field final synthetic i:Lcom/estrongs/android/pop/app/d/a;

.field final synthetic j:Z

.field final synthetic k:Z

.field final synthetic l:Landroid/widget/TextView;

.field final synthetic m:Lcom/estrongs/android/pop/utils/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bv;ZZZZILcom/estrongs/android/ui/dialog/ci;Ljava/lang/String;Ljava/util/List;Lcom/estrongs/android/pop/app/d/a;ZZLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bz;->m:Lcom/estrongs/android/pop/utils/bv;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/utils/bz;->a:Z

    iput-boolean p3, p0, Lcom/estrongs/android/pop/utils/bz;->b:Z

    iput-boolean p4, p0, Lcom/estrongs/android/pop/utils/bz;->c:Z

    iput-boolean p5, p0, Lcom/estrongs/android/pop/utils/bz;->d:Z

    iput p6, p0, Lcom/estrongs/android/pop/utils/bz;->e:I

    iput-object p7, p0, Lcom/estrongs/android/pop/utils/bz;->f:Lcom/estrongs/android/ui/dialog/ci;

    iput-object p8, p0, Lcom/estrongs/android/pop/utils/bz;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/estrongs/android/pop/utils/bz;->h:Ljava/util/List;

    iput-object p10, p0, Lcom/estrongs/android/pop/utils/bz;->i:Lcom/estrongs/android/pop/app/d/a;

    iput-boolean p11, p0, Lcom/estrongs/android/pop/utils/bz;->j:Z

    iput-boolean p12, p0, Lcom/estrongs/android/pop/utils/bz;->k:Z

    iput-object p13, p0, Lcom/estrongs/android/pop/utils/bz;->l:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bz;->m:Lcom/estrongs/android/pop/utils/bv;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/utils/bz;->a:Z

    iget-boolean v2, p0, Lcom/estrongs/android/pop/utils/bz;->b:Z

    iget-boolean v3, p0, Lcom/estrongs/android/pop/utils/bz;->c:Z

    iget-boolean v4, p0, Lcom/estrongs/android/pop/utils/bz;->d:Z

    iget v5, p0, Lcom/estrongs/android/pop/utils/bz;->e:I

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/utils/bv;ZZZZIZ)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bz;->f:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bz;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bz;->h:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/estrongs/fs/h;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_1

    :goto_0
    invoke-interface {v7}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v9

    iget-object v12, p0, Lcom/estrongs/android/pop/utils/bz;->m:Lcom/estrongs/android/pop/utils/bv;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bz;->m:Lcom/estrongs/android/pop/utils/bv;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bz;->i:Lcom/estrongs/android/pop/app/d/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/bz;->h:Ljava/util/List;

    iget-boolean v3, p0, Lcom/estrongs/android/pop/utils/bz;->j:Z

    iget-boolean v4, p0, Lcom/estrongs/android/pop/utils/bz;->a:Z

    iget-boolean v5, p0, Lcom/estrongs/android/pop/utils/bz;->b:Z

    iget-boolean v6, p0, Lcom/estrongs/android/pop/utils/bz;->c:Z

    iget-boolean v10, p0, Lcom/estrongs/android/pop/utils/bz;->k:Z

    move v11, p2

    invoke-static/range {v0 .. v11}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/utils/bv;Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZZZLcom/estrongs/fs/h;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/estrongs/android/pop/utils/bv;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bz;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bz;->m:Lcom/estrongs/android/pop/utils/bv;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/bv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    move v8, v9

    goto :goto_0
.end method
