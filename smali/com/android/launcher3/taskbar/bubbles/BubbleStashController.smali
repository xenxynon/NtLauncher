.class public Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

.field private mBubbleStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field private mBubblesShowingOnHome:Z

.field private mBubblesShowingOnOverview:Z

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

.field private mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field private mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mIsStashed:Z

.field private mRequestedExpandedState:Z

.field private mRequestedStashState:Z

.field private mStashedHeight:I

.field private mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field private mUnstashedHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->lambda$onIsStashedChanged$1()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->lambda$init$0()V

    return-void
.end method

.method private createStashAnimator(ZJ)Landroid/animation/AnimatorSet;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget v5, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mUnstashedHeight:I

    iget v6, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mStashedHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_0

    iget-object v9, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v9, v5}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v5, v11, [Landroid/animation/Animator;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v9

    aput-object v9, v5, v15

    iget-object v9, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v9, v12}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v5, v14

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v14, [Landroid/animation/Animator;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubbleStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v9, v13}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v9

    aput-object v9, v5, v15

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/high16 v9, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v5

    int-to-float v5, v5

    iget-boolean v9, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnHome:Z

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    move v5, v10

    :goto_0
    new-array v9, v11, [Landroid/animation/Animator;

    iget-object v12, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v12, v13}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v9, v15

    iget-object v12, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v12, v5}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v9, v14

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v14, [Landroid/animation/Animator;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubbleStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v9

    aput-object v9, v5, v15

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v5, v14, [Landroid/animation/Animator;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v9, v13}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v9

    aput-object v9, v5, v15

    invoke-virtual {v8, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f400000    # 0.75f

    :goto_1
    iget-object v5, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->createRevealAnimToIsStashed(Z)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    long-to-float v2, v2

    mul-float/2addr v9, v2

    float-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    mul-float v3, v2, v12

    float-to-long v9, v3

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sub-float/2addr v13, v12

    mul-float/2addr v2, v13

    float-to-long v2, v2

    invoke-virtual {v8, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v6, v2, v15

    aput-object v7, v2, v14

    aput-object v8, v2, v11

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;Z)V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4
.end method

.method private synthetic lambda$init$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->stashBubbleBar()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->showBubbleBar(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onIsStashedChanged$1()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->onIsStashedChanged()V

    return-void
.end method

.method private onIsStashedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/p;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/bubbles/p;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateStashedAndExpandedState()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isHiddenForNoBubbles()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedStashState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnHome:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnOverview:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    if-eq v1, v0, :cond_3

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    const-wide/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->createStashAnimator(ZJ)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->onIsStashedChanged()V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isExpanded()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedExpandedState:Z

    if-eq v0, v1, :cond_4

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setExpanded(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-object v1, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarScale()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarTranslationY()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->getStashedHandleAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubbleStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->getStashedHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mStashedHeight:I

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->getUnstashedHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mUnstashedHeight:I

    new-instance p1, Lcom/android/launcher3/taskbar/bubbles/q;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/q;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->runAfterInit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isBubblesShowingOnHome()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mBubblesShowingOnHome:Z

    return p0
.end method

.method public isStashed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mIsStashed:Z

    return p0
.end method

.method public showBubbleBar(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedStashState:Z

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedExpandedState:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->updateStashedAndExpandedState()V

    return-void
.end method

.method public stashBubbleBar()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedStashState:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->mRequestedExpandedState:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->updateStashedAndExpandedState()V

    return-void
.end method
