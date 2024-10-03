.class public final Lcom/nothing/launcher/folder/NTFolderNameEditText;
.super Lcom/android/launcher3/ExtendedEditText;
.source "SourceFile"


# instance fields
.field private g:Landroid/text/Editable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final a()V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/folder/NTFolderNameEditText;->g:Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nothing/launcher/folder/NTFolderNameEditText;->g:Landroid/text/Editable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/nothing/launcher/folder/NTFolderNameEditText;->g:Landroid/text/Editable;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float v8, v0, v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setRight(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v4, "text"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getRight()I

    move-result v4

    invoke-interface {v3, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const v0, 0x7f1201a9

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/folder/NTFolderNameEditText;->g:Landroid/text/Editable;

    return-void
.end method

.method public final getOriginText()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/folder/NTFolderNameEditText;->g:Landroid/text/Editable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string p0, "text"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/folder/NTFolderNameEditText;->g:Landroid/text/Editable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nothing/launcher/folder/NTFolderNameEditText;->a()V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/ExtendedEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    iget-object p1, p0, Lcom/nothing/launcher/folder/NTFolderNameEditText;->g:Landroid/text/Editable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/nothing/launcher/folder/NTFolderNameEditText;->a()V

    :cond_0
    return-void
.end method
