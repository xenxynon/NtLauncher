.class public Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BubbleBarViewController"


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

.field private final mBubbleBarAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private mBubbleBarClickListener:Landroid/view/View$OnClickListener;

.field private mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

.field private final mBubbleBarScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mBubbleBarSwipeUpTranslationY:F

.field private final mBubbleBarTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mBubbleClickListener:Landroid/view/View$OnClickListener;

.field private mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

.field private mHiddenForNoBubbles:Z

.field private mHiddenForSysui:Z

.field private final mIconSize:I

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/m;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/bubbles/m;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarScale:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/n;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/bubbles/n;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ef

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mIconSize:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->updateScale()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->lambda$init$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->lambda$init$0(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->updateTranslationY()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->lambda$init$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$init$0(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->onBubbleClicked(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$init$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setExpanded(Z)V

    return-void
.end method

.method private onBubbleClicked(Landroid/view/View;)V
    .locals 2

    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->getBubble()Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->TAG:Ljava/lang/String;

    const-string v1, "bubble click listener, bubble was null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->getSelectedBubbleKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setExpanded(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->stashBubbleBar()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->setSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->isBubblesShowingOnHome()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/quickstep/SystemUiProxy;->showBubble(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private updateScale()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private updateTranslationY()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarSwipeUpTranslationY:F

    add-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateVisibilityForStateChange()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForSysui:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->isStashed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForNoBubbles:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mIconSize:I

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->TAG:Ljava/lang/String;

    const-string p1, "addBubble, bubble was null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getBubbleBarAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public getBubbleBarBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->getBubbleBarBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getBubbleBarScale()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarScale:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public getBubbleBarTranslationY()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 0

    iget-object p1, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iget-object p1, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    new-instance p2, Lcom/android/launcher3/taskbar/bubbles/l;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/bubbles/l;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V

    invoke-interface {p1, p2}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    new-instance p1, Lcom/android/launcher3/taskbar/bubbles/k;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/k;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/android/launcher3/taskbar/bubbles/j;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/j;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarClickListener:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public isHiddenForNoBubbles()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForNoBubbles:Z

    return p0
.end method

.method public removeBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->TAG:Ljava/lang/String;

    const-string p1, "removeBubble, bubble was null!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public reorderBubbles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/taskbar/bubbles/g;->a:Lcom/android/launcher3/taskbar/bubbles/g;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/taskbar/bubbles/o;->a:Lcom/android/launcher3/taskbar/bubbles/o;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->reorder(Ljava/util/List;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->isExpanded()Z

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setExpanded(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->collapseBubbles()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleBarController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->getSelectedBubbleKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->isBubblesShowingOnHome()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/quickstep/SystemUiProxy;->showBubble(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->TAG:Ljava/lang/String;

    const-string p1, "trying to expand bubbles when there isn\'t one selected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setExpandedFromSysui(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->stashBubbleBar()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->showBubbleBar(Z)V

    :goto_0
    return-void
.end method

.method public setHiddenForBubbles(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForNoBubbles:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mHiddenForNoBubbles:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->updateVisibilityForStateChange()V

    :cond_0
    return-void
.end method

.method public updateSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->setSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    return-void
.end method
