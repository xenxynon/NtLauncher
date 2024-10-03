.class public Lcom/android/launcher3/views/StickyHeaderLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;,
        Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;,
        Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;
    }
.end annotation


# static fields
.field private static final INTERCEPT_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

.field private static final SCROLL_OFFSET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/views/StickyHeaderLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;


# instance fields
.field private mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

.field private mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mHeaderHeight:I

.field private mLastScroll:F

.field private mOffsetAnimator:Landroid/animation/Animator;

.field private mScrollOffset:F

.field private mShouldForwardToRecyclerView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$1;

    const-string v1, "scrollAnimOffset"

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->SCROLL_OFFSET:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/views/a0;->a:Lcom/android/launcher3/views/a0;

    sput-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->INTERCEPT_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

    sget-object v0, Lcom/android/launcher3/views/z;->a:Lcom/android/launcher3/views/z;

    sput-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->TOUCH_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mShouldForwardToRecyclerView:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/StickyHeaderLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/views/StickyHeaderLayout;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/views/StickyHeaderLayout;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/views/StickyHeaderLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/views/StickyHeaderLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->lambda$reset$0()V

    return-void
.end method

.method private findCurrentEmptyView()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setOnYChangeCallback(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    iput-object v2, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getHeaderHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setFixedHeight(I)Z

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    new-instance v1, Lcom/android/launcher3/views/b0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/b0;-><init>(Lcom/android/launcher3/views/StickyHeaderLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setOnYChangeCallback(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getCurrentScroll()F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method private synthetic lambda$reset$0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :try_start_0
    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p2, p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;->proxyEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    neg-float p2, v0

    neg-float v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return p0

    :catchall_0
    move-exception p0

    neg-float p2, v0

    neg-float v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    throw p0
.end method

.method private updateHeaderScroll()V
    .locals 5

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getCurrentScroll()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    iget v4, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    iget v3, v3, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->scrollLimit:I

    int-to-float v3, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance p0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance p0, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public getHeaderHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mHeaderHeight:I

    return p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p1, p1, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->findCurrentEmptyView()V

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->findCurrentEmptyView()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->INTERCEPT_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;->proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mShouldForwardToRecyclerView:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;

    iget-boolean v0, p5, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->sticky:Z

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p3

    iput v0, p5, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->scrollLimit:I

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p3, p4

    goto :goto_1

    :cond_0
    const/high16 p4, -0x80000000

    iput p4, p5, Lcom/android/launcher3/views/StickyHeaderLayout$MyLayoutParams;->scrollLimit:I

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mHeaderHeight:I

    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentEmptySpaceView:Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->setFixedHeight(I)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mShouldForwardToRecyclerView:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/views/StickyHeaderLayout;->TOUCH_PROXY:Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/StickyHeaderLayout;->proxyMotionEvent(Landroid/view/MotionEvent;Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mScrollOffset:F

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->updateHeaderScroll()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mLastScroll:F

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->getCurrentScroll()F

    move-result v1

    sub-float/2addr p1, v1

    sget-object v1, Lcom/android/launcher3/views/StickyHeaderLayout;->SCROLL_OFFSET:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput v0, v2, p1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/android/launcher3/views/c0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/c0;-><init>(Lcom/android/launcher3/views/StickyHeaderLayout;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mOffsetAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public setCurrentRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout;->mCurrentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/views/StickyHeaderLayout;->findCurrentEmptyView()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->reset(Z)V

    return-void
.end method
