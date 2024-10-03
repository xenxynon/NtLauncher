.class public interface abstract Lcom/android/launcher3/util/LauncherBindableItemsContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->lambda$updateWorkspaceItems$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->lambda$updateRestoreItems$1(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateRestoreItems$1(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/BubbleTextView;->applyLoadingState(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz v0, :cond_2

    instance-of p1, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/launcher3/util/a0;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/a0;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->updatePreviewItems(Ljava/util/function/Predicate;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$updateWorkspaceItems$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 4

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v0, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-virtual {v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v3

    if-eq v3, v2, :cond_1

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p2, p1, p0}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    goto :goto_2

    :cond_2
    instance-of p1, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p1, :cond_3

    instance-of p1, p2, Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz p1, :cond_3

    check-cast p2, Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/launcher3/util/a0;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/a0;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->updatePreviewItems(Ljava/util/function/Predicate;)V

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public abstract mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
.end method

.method public updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/y;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/y;-><init>(Ljava/util/HashSet;)V

    invoke-interface {p0, v0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    invoke-static {p2}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_0
    return-void
.end method

.method public updateWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/views/ActivityContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Lcom/android/launcher3/views/ActivityContext;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/android/launcher3/util/z;

    invoke-direct {p1, v0}, Lcom/android/launcher3/util/z;-><init>(Ljava/util/HashSet;)V

    invoke-interface {p0, p1}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    invoke-static {p2}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    :cond_0
    return-void
.end method
