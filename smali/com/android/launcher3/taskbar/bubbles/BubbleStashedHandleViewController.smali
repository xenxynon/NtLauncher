.class public Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mBarSize:I

.field private mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

.field private mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

.field private mHiddenForHomeButtonDisabled:Z

.field private mHiddenForNoBubbles:Z

.field private mHiddenForSysui:Z

.field private mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

.field private mStartProgressForNextRevealAnim:F

.field private final mStashedHandleBounds:Landroid/graphics/Rect;

.field private mStashedHandleHeight:I

.field private final mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

.field private mStashedHandleWidth:I

.field private final mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private mWasLastRevealAnimReversed:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance p1, Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;ILandroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->lambda$init$0(ILandroid/view/View;IIIIIIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStartProgressForNextRevealAnim:F

    return p1
.end method

.method private synthetic lambda$init$0(ILandroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    div-int/lit8 p5, p1, 0x2

    sub-int/2addr p4, p5

    iget-object p5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleWidth:I

    sub-int p6, p3, p6

    iget p7, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleHeight:I

    div-int/lit8 p8, p7, 0x2

    sub-int p8, p4, p8

    div-int/lit8 p7, p7, 0x2

    add-int/2addr p4, p7

    invoke-virtual {p5, p6, p8, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p0}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateSampledRegion(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    sub-float/2addr p0, p1

    invoke-virtual {p2, p0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method private updateRegionSampling()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->isStashed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->setWindowVisible(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateSampledRegion(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/StashedHandleView;->getSampledRegion()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    :goto_1
    return-void
.end method

.method private updateVisibilityForStateChange()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mHiddenForSysui:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mHiddenForHomeButtonDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mHiddenForNoBubbles:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->updateRegionSampling()V

    return-void
.end method


# virtual methods
.method public createRevealAnimToIsStashed(Z)Landroid/animation/Animator;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mBarSize:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    new-instance v2, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v0, v3}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mWasLastRevealAnimReversed:Z

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mWasLastRevealAnimReversed:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStartProgressForNextRevealAnim:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStartProgressForNextRevealAnim:F

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStartProgressForNextRevealAnim:F

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;ZF)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController$3;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public getStashedHandleAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public getStashedHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleHeight:I

    return p0
.end method

.method public getUnstashedHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mBarSize:I

    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 3

    iget-object p1, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-object p1, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleHeight:I

    const p2, 0x7f0700f4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleWidth:I

    const p2, 0x7f0700f2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mBarSize:I

    const p2, 0x7f07057a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mBarSize:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    const p2, 0x7f0700f5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController$1;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance p2, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController$2;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;)V

    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-direct {p2, v0, v1, v2}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/s;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/bubbles/s;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stopAndDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    return-void
.end method

.method public onIsStashedChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->updateRegionSampling()V

    return-void
.end method

.method public setHiddenForBubbles(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mHiddenForNoBubbles:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->mHiddenForNoBubbles:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->updateVisibilityForStateChange()V

    :cond_0
    return-void
.end method
