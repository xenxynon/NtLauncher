.class public Lcom/android/launcher3/DropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/Insettable;


# static fields
.field protected static final DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

.field protected mDeferOnDragEnd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

.field private final mFadeAnimationEndRunnable:Ljava/lang/Runnable;

.field private mIsVertical:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

.field protected mVisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/launcher3/x;

    invoke-direct {p2, p0}, Lcom/android/launcher3/x;-><init>(Lcom/android/launcher3/DropTargetBar;)V

    iput-object p2, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/DropTargetBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/DropTargetBar;->lambda$new$0()V

    return-void
.end method

.method private getVisibleButtons([Lcom/android/launcher3/ButtonDropTarget;)I
    .locals 6

    iget-object p0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public animateToVisibility(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xaf

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    :cond_2
    return-void
.end method

.method protected deferOnDragEnd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargets()[Lcom/android/launcher3/ButtonDropTarget;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/android/launcher3/ButtonDropTarget;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public onDragEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    :goto_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ButtonDropTarget;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/ButtonDropTarget;->setDropTargetBar(Lcom/android/launcher3/DropTargetBar;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    invoke-direct {p0, p1}, Lcom/android/launcher3/DropTargetBar;->getVisibleButtons([Lcom/android/launcher3/ButtonDropTarget;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p3

    iget-object p5, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p3, p5}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadScale(Landroid/content/Context;)F

    move-result p5

    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-boolean v1, p3, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    sub-int/2addr p4, p2

    div-int/2addr p4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    add-int/2addr p4, v0

    div-int/2addr p4, v2

    invoke-virtual {p3}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p3, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p3}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget-object v3, p3, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    div-int/2addr v0, v2

    sub-int/2addr v0, p4

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    add-int/2addr p4, v0

    sub-int/2addr p4, p2

    :goto_0
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v2

    sub-int p1, p4, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, v2

    add-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, v0, p4, p2}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_4

    iget p1, p3, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    iget-object p0, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v1, p0, v0

    aget-object p0, p0, p2

    iget-boolean p2, p3, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p2, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    sub-int p2, p4, p2

    div-int/2addr p1, v2

    sub-int/2addr p2, p1

    sub-int p3, p4, p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {v1, p2, v0, p3, p5}, Landroid/widget/TextView;->layout(IIII)V

    add-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p4, v0, p1, p2}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p5

    float-to-int p2, p2

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p5

    sub-int v3, p2, p3

    sub-int/2addr v3, p5

    sub-int/2addr v3, p1

    div-int/2addr p2, v2

    sub-int/2addr p4, p2

    div-int/2addr v3, v2

    add-int/2addr p4, v3

    add-int/2addr p3, p4

    add-int/2addr p1, p3

    add-int/2addr p5, p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v1, p4, v0, p3, p2}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, v0, p5, p2}, Landroid/widget/TextView;->layout(IIII)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    invoke-direct {p0, v1}, Lcom/android/launcher3/DropTargetBar;->getVisibleButtons([Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v2}, Lcom/android/launcher3/ButtonDropTarget;->resizeTextToFit()F

    goto/16 :goto_1

    :cond_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget v6, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetVerticalPaddingPx:I

    iget v7, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetHorizontalPaddingPx:I

    iget-object v8, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v8, v8, v4

    iget v9, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    int-to-float v9, v9

    invoke-virtual {v8, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v3}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    invoke-virtual {v8, v3}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v8, v4}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    invoke-virtual {v8, v7, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v9, v9, v3

    iget v10, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    int-to-float v10, v10

    invoke-virtual {v9, v4, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v9, v3}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    invoke-virtual {v9, v3}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v9, v4}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    invoke-virtual {v9, v7, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-boolean v10, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v10, :cond_1

    iget v10, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v11, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v5

    goto :goto_0

    :cond_1
    iget v10, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v11, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    sub-int/2addr v10, v11

    :goto_0
    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v8, v11, v0}, Landroid/widget/TextView;->measure(II)V

    iget-boolean v12, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    if-nez v12, :cond_2

    invoke-virtual {v8, v10}, Lcom/android/launcher3/ButtonDropTarget;->isTextTruncated(I)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v8, v4}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v9, v4}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v8, v3}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    div-int/lit8 v12, v6, 0x2

    invoke-virtual {v8, v7, v12, v7, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    iget-boolean v12, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v12, :cond_3

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    add-int/2addr v11, v1

    sub-int/2addr v10, v11

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    :cond_3
    invoke-virtual {v9, v11, v0}, Landroid/widget/TextView;->measure(II)V

    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    if-nez v0, :cond_4

    invoke-virtual {v9, v10}, Lcom/android/launcher3/ButtonDropTarget;->isTextTruncated(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9, v4}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v8, v4}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    invoke-virtual {v9, v3}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    div-int/2addr v6, v5

    invoke-virtual {v9, v7, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_4
    invoke-virtual {v8}, Lcom/android/launcher3/ButtonDropTarget;->resizeTextToFit()F

    move-result v0

    invoke-virtual {v9}, Lcom/android/launcher3/ButtonDropTarget;->resizeTextToFit()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_5

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_6
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-boolean p1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p1, :cond_0

    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr p1, v3

    iget-object v3, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v4, v3

    sub-int/2addr p1, v4

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr p1, v3

    add-int/2addr p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070181

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    if-eqz p1, :cond_1

    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    sub-int v3, p1, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_1
    iget p1, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x31

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->dropTargetHorizontalPaddingPx:I

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->dropTargetVerticalPaddingPx:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v0, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v5, p0, v4

    iget v6, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    int-to-float v6, v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v3}, Lcom/android/launcher3/ButtonDropTarget;->setToolTipLocation(I)V

    invoke-virtual {v5, v2, p1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setup(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 3

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
