.class public Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

.field private final mBubbleBarBounds:Landroid/graphics/Rect;

.field private final mBubbleElevation:F

.field private final mIconOverlapAmount:F

.field private final mIconSize:F

.field private final mIconSpacing:F

.field private mIsBarExpanded:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mReorderRunnable:Ljava/lang/Runnable;

.field private mSelectedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mTempRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700ee

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconOverlapAmount:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700f0

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSpacing:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700ef

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700ed

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleElevation:F

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    new-instance p2, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700f2

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p2, p1, p3}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;F)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->lambda$updateArrowForSelected$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->lambda$reorder$0(Ljava/util/List;)V

    return-void
.end method

.method private doReorder(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/bubbles/BubbleView;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateChildrenRenderNodeProperties()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$reorder$0(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->doReorder(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$updateArrowForSelected$1(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->setArrowPosition(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setOrUnsetClickListener()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateArrowForSelected(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mSelectedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->TAG:Ljava/lang/String;

    const-string p1, "trying to update selection arrow without a selected view!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    iget v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSpacing:F

    add-float/2addr v3, v2

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->getArrowPositionX()F

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    aput v1, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/h;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/h;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->setArrowPosition(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method private updateChildrenRenderNodeProperties()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-eqz v4, :cond_1

    int-to-float v4, v2

    iget v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    iget v6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSpacing:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setZ(F)V

    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->showBadge()V

    goto :goto_1

    :cond_1
    const/high16 v4, 0x40a00000    # 5.0f

    iget v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleElevation:F

    mul-float/2addr v5, v4

    int-to-float v4, v2

    sub-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setZ(F)V

    iget v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconOverlapAmount:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    if-lez v2, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->hideBadge()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

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

.method public getBubbleBarBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBounds:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateChildrenRenderNodeProperties()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-eqz v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSpacing:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconOverlapAmount:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIconSize:F

    float-to-int v2, v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v2, v1}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public reorder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/bubbles/BubbleView;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/i;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/bubbles/i;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mReorderRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->doReorder(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateArrowForSelected(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setOrUnsetClickListener()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mReorderRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mReorderRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mBubbleBarBackground:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mIsBarExpanded:Z

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBackground;->showArrow(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setOrUnsetClickListener()V

    return-void
.end method

.method public setSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->mSelectedBubbleView:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->updateArrowForSelected(Z)V

    return-void
.end method
