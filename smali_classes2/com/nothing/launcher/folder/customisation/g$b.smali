.class public final Lcom/nothing/launcher/folder/customisation/g$b;
.super Lcom/nothing/launcher/folder/customisation/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/folder/customisation/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;

.field private final b:I

.field final synthetic c:Lcom/nothing/launcher/folder/customisation/g;


# direct methods
.method public constructor <init>(Lcom/nothing/launcher/folder/customisation/g;Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "bindings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/g$b;->c:Lcom/nothing/launcher/folder/customisation/g;

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v0, "bindings.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nothing/launcher/folder/customisation/g$a;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/nothing/launcher/folder/customisation/g$b;->a:Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070124

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/folder/customisation/g$b;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/nothing/launcher/folder/customisation/a;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 9

    const-string v0, "coverItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/g$b;->a:Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/g$b;->c:Lcom/nothing/launcher/folder/customisation/g;

    iget-object v2, v0, Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;->icon:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Lcom/nothing/launcher/folder/customisation/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La4/d;->e(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "emojiTips"

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/nothing/launcher/folder/customisation/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v7, "context"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, La4/d;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/nothing/launcher/folder/customisation/g$b;->b:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr p0, v3

    div-int/lit8 p0, p0, 0x2

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, p0

    invoke-direct {v3, v4, p0, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v6, v1, v6, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, v0, Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;->emojiTips:Landroid/widget/ImageView;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/nothing/launcher/folder/customisation/g;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La4/d;->b(Ljava/lang/String;)Ln5/k;

    move-result-object p0

    invoke-virtual {p0}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6, v6, v6, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, v0, Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;->emojiTips:Landroid/widget/ImageView;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, v0, Lcom/android/launcher3/databinding/FolderCoverEmojiItemBinding;->emojiTips:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/nothing/launcher/folder/customisation/a;->d(Lcom/android/launcher3/model/data/FolderInfo;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
