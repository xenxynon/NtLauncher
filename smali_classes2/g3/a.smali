.class public final Lg3/a;
.super Lcom/android/launcher3/graphics/DragPreviewProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private final b(Landroid/view/View;)Z
    .locals 1

    instance-of p0, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private final c(Landroid/view/View;Z)V
    .locals 0

    instance-of p0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon;->setTextVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public createDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    const-string v1, "mView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lg3/a;->b(Landroid/view/View;)Z

    move-result v0

    const-string v2, "super.createDrawable()"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lg3/a;->c(Landroid/view/View;Z)V

    invoke-super {p0}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lg3/a;->c(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
