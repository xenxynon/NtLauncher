.class public Lcom/android/launcher3/taskbar/StashedHandleViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mIsStashed:Z

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

.field private mStartProgressForNextRevealAnim:F

.field private final mStashedHandleBounds:Landroid/graphics/Rect;

.field private final mStashedHandleHeight:I

.field private mStashedHandleRadius:F

.field private final mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

.field private mStashedHandleWidth:I

.field private mTaskbarHidden:Z

.field private mTaskbarSize:I

.field private final mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private final mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mTranslationYForStash:F

.field private mTranslationYForSwipe:F

.field private mWasLastRevealAnimReversed:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/StashedHandleView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/u0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/u0;-><init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mPrefs:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance v1, Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x4

    invoke-direct {v1, p2, v2}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    const-string v1, "stashed_handle_region_is_dark"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, v0, v2}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateHandleColor(ZZ)V

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070556

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleHeight:I

    return-void
.end method

.method public static synthetic a(ILandroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->lambda$init$0(ILandroid/view/View;IIIIIIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/StashedHandleViewController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/StashedHandleViewController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Lcom/android/launcher3/taskbar/StashedHandleView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/taskbar/StashedHandleViewController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleRadius:F

    return p0
.end method

.method static synthetic access$402(Lcom/android/launcher3/taskbar/StashedHandleViewController;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleRadius:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/taskbar/StashedHandleViewController;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/launcher3/taskbar/StashedHandleViewController;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStartProgressForNextRevealAnim:F

    return p1
.end method

.method private initRegionSampler()V
    .locals 4

    new-instance v0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance v2, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController$2;-><init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;)V

    sget-object v3, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    return-void
.end method

.method private isPhoneGestureNavMode(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$init$0(ILandroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p3, p0

    int-to-float p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotX(F)V

    int-to-float p0, p3

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method private updateRegionSamplingWindowVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mIsStashed:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarHidden:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->setWindowVisible(Z)V

    return-void
.end method

.method private updateTranslationY()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTranslationYForSwipe:F

    iget p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTranslationYForStash:F

    add-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public createRevealAnimToIsStashed(Z)Landroid/animation/Animator;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getIconLayoutBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleRadius:F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarSize:I

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

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    :cond_0
    new-instance v2, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    iget v3, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleRadius:F

    iget-object v4, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mWasLastRevealAnimReversed:Z

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mWasLastRevealAnimReversed:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStartProgressForNextRevealAnim:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStartProgressForNextRevealAnim:F

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStartProgressForNextRevealAnim:F

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;ZF)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/taskbar/StashedHandleViewController$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController$3;-><init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "StashedHandleViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tisStashedHandleVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isStashedHandleVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmStashedHandleWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmStashedHandleHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
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

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public getStashedHandleBounds(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getStashedHandleHintScale()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isPhoneGestureNavMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070553

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarSize:I

    const v1, 0x7f07055a

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iput v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarSize:I

    const v1, 0x7f070557

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleWidth:I

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarSize:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isPhoneGestureNavMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStashedHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance v2, Lcom/android/launcher3/taskbar/StashedHandleViewController$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController$1;-><init>(Lcom/android/launcher3/taskbar/StashedHandleViewController;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    new-instance v2, Lcom/android/launcher3/taskbar/t0;

    invoke-direct {v2, v0}, Lcom/android/launcher3/taskbar/t0;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->initRegionSampler()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isPhoneGestureNavMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->onIsStashedChanged(Z)V

    :cond_2
    return-void
.end method

.method public isStashedHandleVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stopAndDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    return-void
.end method

.method public onIsStashedChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mIsStashed:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->updateRegionSamplingWindowVisibility()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/StashedHandleView;->updateSampledRegion(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/StashedHandleView;->getSampledRegion()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    :goto_0
    return-void
.end method

.method public setIsHomeButtonDisabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    return-void
.end method

.method protected setTranslationYForStash(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTranslationYForStash:F

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->updateTranslationY()V

    return-void
.end method

.method protected setTranslationYForSwipe(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTranslationYForSwipe:F

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->updateTranslationY()V

    return-void
.end method

.method protected updateStashedHandleHintScale()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mStashedHandleView:Lcom/android/launcher3/taskbar/StashedHandleView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public updateStateForSysuiFlags(I)V
    .locals 0

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/StashedHandleViewController;->mTaskbarHidden:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->updateRegionSamplingWindowVisibility()V

    return-void
.end method
