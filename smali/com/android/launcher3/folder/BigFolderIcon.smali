.class public final Lcom/android/launcher3/folder/BigFolderIcon;
.super Lcom/android/launcher3/folder/BaseFolderIcon;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/ClipPathView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/BigFolderIcon$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/BigFolderIcon$Companion;


# instance fields
.field public bigFolderIconContainer:Lc3/a;

.field private clipPath:Landroid/graphics/Path;

.field private currentAnimator:Landroid/animation/AnimatorSet;

.field private realLongClickItem:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/folder/BigFolderIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/BigFolderIcon$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/folder/BigFolderIcon;->Companion:Lcom/android/launcher3/folder/BigFolderIcon$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/folder/BigFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/BaseFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p0, p0, Lcom/android/launcher3/folder/BigFolderIcon;->realLongClickItem:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/BigFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getAccessibilityTitle(Lcom/android/launcher3/folder/BigFolderIcon;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon;->getAccessibilityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrentAnimator$p(Lcom/android/launcher3/folder/BigFolderIcon;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/BigFolderIcon;->currentAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final cancelRunningAnimations()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/folder/BigFolderIcon;->currentAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/folder/BigFolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/BigFolderIcon;->onDrop$lambda$2(Lcom/android/launcher3/folder/BigFolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private final getAccessibilityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v1

    invoke-virtual {v1}, Lc3/a;->getAllPreviewSize()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1200f1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{\n            context.ge\u2026t, title, size)\n        }"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200f2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p0

    invoke-virtual {p0}, Lc3/a;->getAllPreviewSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{\n            context.ge\u2026)\n            )\n        }"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final onDrop$lambda$2(Lcom/android/launcher3/folder/BigFolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lc3/a;->n(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/Folder;->showItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private final startAnimation(Landroid/animation/AnimatorSet;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/folder/BigFolderIcon$startAnimation$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon$startAnimation$1;-><init>(Lcom/android/launcher3/folder/BigFolderIcon;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackgroundIsVisible$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegated()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/folder/BigFolderIcon;->clipPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    sget-object v0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon;->drawDot(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawDot(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->drawDot(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public drawPreview(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getBigFolderIconContainer()Lc3/a;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BigFolderIcon;->bigFolderIconContainer:Lc3/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "bigFolderIconContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRealLongClickItem()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/BigFolderIcon;->realLongClickItem:Landroid/view/View;

    return-object p0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getIconBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public hasDot()Z
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->hasDot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon;->onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon;->getAccessibilityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCoverValueChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p0

    invoke-virtual {p0}, Lc3/a;->u()V

    return-void
.end method

.method protected onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    const-string v4, "item"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "d"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 v4, 0x1

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget-object v6, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v11

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {v7, v0, v9}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v12

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    goto :goto_0

    :cond_0
    move-object/from16 v9, p3

    move/from16 v12, p4

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    const/4 v5, 0x2

    new-array v10, v5, [I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v11

    invoke-virtual {v11, v3, v10}, Lc3/a;->m(I[I)F

    move-result v11

    const/4 v13, 0x0

    aget v14, v10, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v15

    iget v15, v15, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v12

    invoke-static {v14}, La6/a;->b(F)I

    move-result v14

    aput v14, v10, v13

    aget v14, v10, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v15

    iget v15, v15, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v12

    invoke-static {v14}, La6/a;->b(F)I

    move-result v14

    aput v14, v10, v4

    aget v13, v10, v13

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    div-int/2addr v14, v5

    sub-int/2addr v13, v14

    aget v10, v10, v4

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    div-int/2addr v14, v5

    sub-int/2addr v10, v14

    invoke-virtual {v9, v13, v10}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v5

    invoke-virtual {v5}, Lc3/a;->getAllPreviewSize()I

    move-result v5

    if-ge v3, v5, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    move v10, v5

    :goto_1
    mul-float/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v5

    iget-object v12, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v12, v12, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v12, :cond_2

    iget v12, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v12, v12

    mul-float/2addr v12, v8

    iget v13, v5, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    :cond_2
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v5}, Lj3/a;->h()I

    move-result v13

    if-lt v12, v13, :cond_3

    iget v12, v5, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v12, v12

    mul-float/2addr v12, v8

    invoke-virtual {v5}, Lj3/a;->h()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v12, v5

    mul-float/2addr v11, v12

    :cond_3
    const/16 v12, 0x190

    sget-object v13, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    new-instance v14, Lcom/android/launcher3/folder/d;

    invoke-direct {v14, v0, v3, v1}, Lcom/android/launcher3/folder/d;-><init>(Lcom/android/launcher3/folder/BigFolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v5, v7

    move-object v7, v9

    move v8, v10

    move v9, v11

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move v14, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v5 .. v15}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher3/folder/Folder;->hideItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lc3/a;->n(IZ)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/BaseFolderIcon;->showFolderSuggestName(Lcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :goto_2
    return-void
.end method

.method public onFolderClose(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const-string v1, "info.contents"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lc3/a;->v(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public onFolderTypeChange()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    iput v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->circleType:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->isCover:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lc3/a;->x(Lc3/a;Landroid/animation/AnimatorSet;IILjava/lang/Object;)V

    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc3/a;->F(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p4

    iget p5, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p3

    iget p3, p3, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p4

    iget p4, p4, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p5

    iget p5, p5, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->onRemove(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon;->getAccessibilityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->onTitleChanged(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon;->getAccessibilityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V
    .locals 7

    const-string v0, "destInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "srcInfo"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "d"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->cancelRunningAnimations()V

    new-instance p1, Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/android/launcher3/folder/NTFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;ZILkotlin/jvm/internal/i;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getBigFolderCreateAnim()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon;->startAnimation(Landroid/animation/AnimatorSet;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/folder/BigFolderIcon;->onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V

    return-void
.end method

.method public performDestroyAnimation(Ljava/lang/Runnable;)V
    .locals 5

    const-string v0, "onCompleteRunnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->cancelRunningAnimations()V

    new-instance v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/folder/NTFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;ZILkotlin/jvm/internal/i;)V

    new-instance v1, Lcom/android/launcher3/folder/BigFolderIcon$performDestroyAnimation$animator$1;

    invoke-direct {v1, p1}, Lcom/android/launcher3/folder/BigFolderIcon$performDestroyAnimation$animator$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getBigFolderDestroyAnim(Ly5/a;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon;->startAnimation(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public final setBigFolderIconContainer(Lc3/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BigFolderIcon;->bigFolderIconContainer:Lc3/a;

    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/BigFolderIcon;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setForceHideDot(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->setForceHideDot(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc3/a;->setForceHideDot(Z)V

    :cond_0
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->setIconVisible(Z)V

    return-void
.end method

.method public final setRealLongClickItem(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/BigFolderIcon;->realLongClickItem:Landroid/view/View;

    return-void
.end method

.method public final updateDot(Ly5/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "match"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/BigFolderIcon$updateDot$1;

    invoke-direct {v1, p1}, Lcom/android/launcher3/folder/BigFolderIcon$updateDot$1;-><init>(Ly5/l;)V

    invoke-static {v0, v1}, Lg6/j;->j(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/folder/BigFolderIcon$updateDot$2;->INSTANCE:Lcom/android/launcher3/folder/BigFolderIcon$updateDot$2;

    invoke-static {v0, v1}, Lg6/j;->o(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object v0

    invoke-interface {v0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const-string v1, "info.contents"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const-string v4, "it"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->updateDotInfo()V

    :cond_4
    return-void
.end method

.method public updatePreviewItems(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemCheck"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc3/a;->E(Ljava/util/function/Predicate;)V

    return-void
.end method
