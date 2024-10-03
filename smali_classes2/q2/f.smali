.class public abstract Lq2/f;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"

# interfaces
.implements La3/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Lcom/android/launcher3/PagedView<",
        "TT;>;",
        "La3/a;"
    }
.end annotation


# static fields
.field public static final Companion:Lq2/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq2/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq2/f$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lq2/f;->Companion:Lq2/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lq2/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lq2/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final handleMotionEvent$lambda$0(Lq2/f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    return-void
.end method

.method public static synthetic i(Lq2/f;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lq2/f;->runSnapToDestination$lambda$2(Lq2/f;II)V

    return-void
.end method

.method private final isSnapToLeft(ZZZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    :cond_1
    iget p0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isSnapToRight(ZZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    :cond_1
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    sub-int/2addr p0, v0

    if-ge p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic j(Lq2/f;)V
    .locals 0

    invoke-static {p0}, Lq2/f;->runSnapToDestination$lambda$4(Lq2/f;)V

    return-void
.end method

.method public static synthetic k(Lq2/f;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lq2/f;->runSnapToDestination$lambda$3(Lq2/f;II)V

    return-void
.end method

.method public static synthetic l(Lq2/f;)V
    .locals 0

    invoke-static {p0}, Lq2/f;->onPointerUp$lambda$1(Lq2/f;)V

    return-void
.end method

.method public static synthetic m(Lq2/f;)V
    .locals 0

    invoke-static {p0}, Lq2/f;->handleMotionEvent$lambda$0(Lq2/f;)V

    return-void
.end method

.method private final onActionMove(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {p1}, La6/a;->b(F)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLastMotion()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getTotalMotion()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->setTotalMotion(F)V

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setLastMotion(I)V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->VIEW_SCROLL_BY:Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;

    invoke-interface {p1, p0, v1, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "lookupContext(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/PagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final onOtherPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setDownMotionPrimary(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionPrimary()F

    move-result v0

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setLastMotion(I)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->clearVelocity()V

    :cond_1
    return-void
.end method

.method private final onPointDown(Landroid/view/MotionEvent;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setDownMotionPrimary(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionPrimary()F

    move-result v0

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setLastMotion(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setTotalMotion(F)V

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    :cond_0
    return-void
.end method

.method private final onPointerUp(Landroid/view/MotionEvent;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "DragScrollerPagedView"

    const-string p1, "current page was null. this should not happen."

    invoke-static {p0, p1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Lq2/b;

    invoke-direct {p1, p0}, Lq2/b;-><init>(Lq2/f;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    return-void

    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lq2/f;->runSnapToDestination(Landroid/view/MotionEvent;ILandroid/view/View;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    return-void
.end method

.method static synthetic onPointerUp$default(Lq2/f;Landroid/view/MotionEvent;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lq2/f;->onPointerUp(Landroid/view/MotionEvent;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onPointerUp"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final onPointerUp$lambda$1(Lq2/f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPageImmediately(I)Z

    return-void
.end method

.method private final runSnapToDestination(Landroid/view/MotionEvent;ILandroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryDirection(Landroid/view/MotionEvent;I)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPrimaryVelocity()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDownMotionPrimary()F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result p3

    int-to-float p3, p3

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, La6/a;->b(F)I

    move-result p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/launcher3/PagedView;->isSignificantMove(FI)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getTotalMotion()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLastMotion()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setTotalMotion(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getTotalMotion()F

    move-result p1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mPageSlop:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    goto :goto_2

    :cond_2
    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    :goto_2
    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    if-eqz v4, :cond_4

    if-lez p2, :cond_5

    goto :goto_4

    :cond_4
    if-gez p2, :cond_5

    :goto_4
    move v4, v2

    goto :goto_5

    :cond_5
    move v4, v3

    :goto_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float p3, p3

    const v7, 0x3ea8f5c3    # 0.33f

    mul-float/2addr p3, v7

    cmpl-float p3, v6, p3

    if-lez p3, :cond_7

    int-to-float p3, p2

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpg-float p3, p3, v0

    if-nez p3, :cond_6

    move p3, v2

    goto :goto_6

    :cond_6
    move p3, v3

    :goto_6
    if-nez p3, :cond_7

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    invoke-direct {p0, v1, v5, p1, v4}, Lq2/f;->isSnapToLeft(ZZZZ)Z

    move-result p3

    if-eqz p3, :cond_9

    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p3

    sub-int/2addr p1, p3

    :goto_8
    new-instance p3, Lq2/d;

    invoke-direct {p3, p0, p1, p2}, Lq2/d;-><init>(Lq2/f;II)V

    :goto_9
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_9
    invoke-direct {p0, v1, v5, p1, v4}, Lq2/f;->isSnapToRight(ZZZZ)Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result p3

    add-int/2addr p1, p3

    :goto_a
    new-instance p3, Lq2/e;

    invoke-direct {p3, p0, p1, p2}, Lq2/e;-><init>(Lq2/f;II)V

    goto :goto_9

    :cond_b
    new-instance p1, Lq2/a;

    invoke-direct {p1, p0}, Lq2/a;-><init>(Lq2/f;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    :goto_b
    return-void
.end method

.method private static final runSnapToDestination$lambda$2(Lq2/f;II)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)Z

    return-void
.end method

.method private static final runSnapToDestination$lambda$3(Lq2/f;II)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)Z

    return-void
.end method

.method private static final runSnapToDestination$lambda$4(Lq2/f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    return-void
.end method


# virtual methods
.method public enableScroller()Z
    .locals 0

    invoke-static {p0}, La3/a$a;->a(La3/a;)Z

    move-result p0

    return p0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Lq2/f;->onPointerUp$default(Lq2/f;Landroid/view/MotionEvent;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lq2/f;->onOtherPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lq2/f;->onPointDown(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-eqz p1, :cond_5

    new-instance p1, Lq2/c;

    invoke-direct {p1, p0}, Lq2/c;-><init>(Lq2/f;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->runOnPageScrollsInitialized(Ljava/lang/Runnable;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lq2/f;->onActionMove(Landroid/view/MotionEvent;)V

    :cond_7
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDragScrollerEnter(Landroid/view/MotionEvent;I)V
    .locals 1

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lq2/f;->onPointDown(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onDragScrollerExit(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "motionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lq2/f;->onPointerUp(Landroid/view/MotionEvent;Z)V

    return-void
.end method
