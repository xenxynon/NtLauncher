.class public Lcom/android/launcher3/taskbar/TaskbarViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;
    }
.end annotation


# static fields
.field private static final NO_OP:Ljava/lang/Runnable;

.field private static final TAG:Ljava/lang/String; = "TaskbarViewController"


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

.field private mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mIsHotseatIconOnTopWhenAligned:Z

.field private final mIsRtl:Z

.field private final mLauncherThemedIconsBackgroundColor:I

.field private final mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

.field private mOnControllerPreCreateCallback:Ljava/lang/Runnable;

.field private final mStashedHandleHeight:I

.field private final mTaskbarBottomMargin:I

.field private final mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private final mTaskbarIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTaskbarIconTranslationYForHome:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mTaskbarIconTranslationYForSpringOnStash:F

.field private final mTaskbarIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mTaskbarIconTranslationYForSwipe:F

.field private mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTaskbarThemedIconsBackgroundColor:I

.field private final mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

.field private final mThemedIconsBackgroundProgress:Lcom/android/launcher3/anim/AnimatedFloat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/taskbar/k4;->g:Lcom/android/launcher3/taskbar/k4;

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->NO_OP:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/i4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/i4;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/h4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/h4;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/h4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/h4;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/g4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/g4;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemedIconsBackgroundProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->NO_OP:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/taskbar/d4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/d4;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x7

    invoke-direct {v0, p2, v1}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarBottomMargin:I

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070556

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mStashedHandleHeight:I

    invoke-static {p1}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mLauncherThemedIconsBackgroundColor:I

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarThemedIconsBackgroundColor:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [F

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v0, 0x2

    const v1, 0x3e99999a    # 0.3f

    aput v1, p1, v0

    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarThemedIconsBackgroundColor:I

    :goto_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsRtl:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/TaskbarViewController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarViewController;Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$new$1(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateScale()V

    return-void
.end method

.method private createIconAlignmentController(Lcom/android/launcher3/DeviceProfile;)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    new-instance v2, Lcom/android/launcher3/anim/PendingAnimation;

    const-wide/16 v3, 0x64

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v9

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v10

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v3, v3

    iget v4, v9, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    int-to-float v4, v4

    div-float v11, v3, v4

    iget v12, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v4, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    invoke-static {v3, v12, v4}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v13

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isIconAlignedWithHotseat()Z

    move-result v14

    iget-boolean v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    :goto_0
    move-object v15, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v8

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v5, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    neg-int v4, v8

    int-to-float v4, v4

    invoke-virtual {v2, v3, v5, v4, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v2, v3, v5, v4, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

    int-to-float v4, v8

    invoke-virtual {v2, v3, v5, v4, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemedIconsBackgroundProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    sget-object v16, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object v3, v2

    move/from16 v17, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_1
    move/from16 v17, v8

    :goto_1
    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDefaultTaskbarWindowHeight()I

    move-result v3

    iget v4, v9, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    add-int v4, v4, v17

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-instance v5, Lcom/android/launcher3/taskbar/c4;

    invoke-direct {v5, v0, v4, v3}, Lcom/android/launcher3/taskbar/c4;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;II)V

    invoke-virtual {v2, v5}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v16, 0x0

    move/from16 v8, v16

    :goto_2
    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v8, v3, :cond_15

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarView;->getAllAppsButtonView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v7, v3, :cond_2

    move v3, v4

    goto :goto_3

    :cond_2
    move/from16 v3, v16

    :goto_3
    iget-object v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarView;->getTaskbarDividerView()Landroid/view/View;

    move-result-object v5

    if-ne v7, v5, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v4, v16

    :goto_4
    iget-boolean v5, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    const/4 v6, 0x0

    if-nez v5, :cond_5

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v5, 0x3f4ccccd    # 0.8f

    move/from16 v19, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v8}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    :goto_5
    invoke-virtual {v2, v7, v6, v4}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    :cond_4
    const v8, 0x3f570a3d    # 0.84f

    goto :goto_7

    :cond_5
    move/from16 v19, v8

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_PINNING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_7
    if-nez v14, :cond_8

    iget-boolean v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {v4, v6, v6}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    goto :goto_5

    :cond_8
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    if-eqz v14, :cond_9

    const v5, 0x3e2e147b    # 0.17f

    invoke-static {v4, v6, v5}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    const v8, 0x3f570a3d    # 0.84f

    goto :goto_6

    :cond_9
    const v5, 0x3f3851ec    # 0.72f

    const v8, 0x3f570a3d    # 0.84f

    invoke-static {v4, v5, v8}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    :goto_6
    invoke-virtual {v2, v7, v6, v4}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    :goto_7
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarView;->getQsb()Landroid/view/View;

    move-result-object v4

    const/high16 v17, 0x40000000    # 2.0f

    if-ne v7, v4, :cond_10

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_a

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v4, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v12

    int-to-float v3, v3

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    int-to-float v4, v4

    div-float v4, v4, v17

    add-float/2addr v3, v4

    goto :goto_8

    :cond_a
    iget v3, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v12

    int-to-float v3, v3

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    int-to-float v4, v4

    div-float v4, v4, v17

    sub-float/2addr v3, v4

    :goto_8
    move/from16 v21, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v22, v3, v17

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    iget v4, v9, Lcom/android/launcher3/DeviceProfile;->taskbarIconSize:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v17

    int-to-float v4, v4

    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->hotseatQsbVisualHeight:I

    int-to-float v5, v5

    div-float v17, v4, v5

    sget-object v5, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v23, 0x3f800000    # 1.0f

    move v4, v3

    move-object v3, v2

    move v1, v4

    move-object v4, v7

    move/from16 v18, v11

    move v11, v6

    move/from16 v6, v17

    move-object v11, v7

    move/from16 v7, v23

    move/from16 v23, v12

    move v12, v8

    move-object v8, v15

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    if-eqz v20, :cond_b

    neg-float v1, v1

    :cond_b
    move v6, v1

    sub-float v7, v21, v22

    instance-of v1, v11, Lcom/android/launcher3/Reorderable;

    if-eqz v1, :cond_c

    move-object v1, v11

    check-cast v1, Lcom/android/launcher3/Reorderable;

    invoke-interface {v1}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v1

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    move-object v3, v2

    move-object/from16 v20, v5

    move v12, v8

    move-object v8, v15

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v12}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v1

    iget v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarBottomMargin:I

    int-to-float v3, v3

    move-object/from16 v4, v20

    invoke-virtual {v2, v1, v4, v3, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_9

    :cond_c
    sget-object v5, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    move-object v3, v2

    move-object v4, v11

    move-object v8, v15

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarBottomMargin:I

    int-to-float v3, v3

    invoke-virtual {v2, v11, v1, v3, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    :goto_9
    iget-boolean v1, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-eqz v1, :cond_f

    sget-object v5, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v14, :cond_d

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v3, 0x3eb33333    # 0.35f

    const/4 v4, 0x0

    :goto_a
    invoke-static {v1, v4, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object v8, v1

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_e
    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v4, 0x3f570a3d    # 0.84f

    goto :goto_a

    :goto_b
    move-object v3, v2

    move-object v4, v11

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    :cond_f
    new-instance v1, Lcom/android/launcher3/taskbar/b4;

    invoke-direct {v1, v11}, Lcom/android/launcher3/taskbar/b4;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move/from16 v3, v18

    goto/16 :goto_e

    :cond_10
    move/from16 v18, v11

    move/from16 v23, v12

    const/4 v12, 0x3

    move-object v11, v7

    if-eqz v3, :cond_12

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v9, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    goto :goto_c

    :cond_11
    const/4 v1, -0x1

    goto :goto_c

    :cond_12
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_14

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :goto_c
    iget v3, v10, Landroid/graphics/Rect;->left:I

    add-int v4, v13, v23

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v1, v3

    int-to-float v3, v13

    div-float v3, v3, v17

    add-float/2addr v1, v3

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v3, v17

    sub-float/2addr v1, v3

    instance-of v3, v11, Lcom/android/launcher3/Reorderable;

    if-eqz v3, :cond_13

    move-object v7, v11

    check-cast v7, Lcom/android/launcher3/Reorderable;

    invoke-interface {v7}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    invoke-virtual {v2, v4, v5, v1, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-virtual {v3, v12}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v1

    iget v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarBottomMargin:I

    int-to-float v3, v3

    invoke-virtual {v2, v1, v5, v3, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_d

    :cond_13
    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    invoke-virtual {v2, v11, v3, v1, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    iget v3, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarBottomMargin:I

    int-to-float v3, v3

    invoke-virtual {v2, v11, v1, v3, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    :goto_d
    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    move/from16 v3, v18

    invoke-virtual {v2, v11, v1, v3, v15}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_e

    :cond_14
    move/from16 v3, v18

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarViewController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported view found in createIconAlignmentController, v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    add-int/lit8 v8, v19, 0x1

    move-object/from16 v1, p1

    move v11, v3

    move/from16 v12, v23

    goto/16 :goto_2

    :cond_15
    invoke-virtual {v2}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/taskbar/f4;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/f4;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    iput-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mOnControllerPreCreateCallback:Ljava/lang/Runnable;

    return-object v1
.end method

.method private createRevealAnimForView(Landroid/view/View;ZFZZ)Landroid/animation/ValueAnimator;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mStashedHandleHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsRtl:Z

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, p0

    sub-float/2addr v4, p3

    float-to-int p3, v4

    goto :goto_0

    :cond_0
    iget p0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, p0

    add-float/2addr v4, p3

    float-to-int p3, v4

    move v5, p3

    move p3, p0

    move p0, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p3

    div-float/2addr p0, v2

    float-to-int p0, p0

    iget p3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p0

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int p0, v4, p0

    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p3, v3, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p0, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v2

    goto :goto_1

    :cond_2
    move p3, p0

    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v2

    new-instance v1, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    invoke-direct {v1, p3, p4, v0, v4}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p1, p2, p0}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;ZF)Landroid/animation/ValueAnimator;

    move-result-object p0

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {p2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/util/MultiTranslateDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$addRevealAnimToIsStashed$2(Lcom/android/launcher3/util/MultiTranslateDelegate;)V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$static$0()V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/TaskbarViewController;IILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$createIconAlignmentController$4(IILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$createIconAlignmentController$6(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method

.method public static synthetic h(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$addRevealAnimToIsStashed$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->lambda$createIconAlignmentController$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static synthetic lambda$addRevealAnimToIsStashed$2(Lcom/android/launcher3/util/MultiTranslateDelegate;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher3/util/MultiTranslateDelegate;->setTranslation(IFF)V

    return-void
.end method

.method private static synthetic lambda$addRevealAnimToIsStashed$3(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$createIconAlignmentController$4(IILandroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    return-void
.end method

.method private static synthetic lambda$createIconAlignmentController$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$createIconAlignmentController$6(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->commitRunningAppsToUI()V

    return-void
.end method

.method private static synthetic lambda$static$0()V
    .locals 0

    return-void
.end method

.method private updateScale()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private updateTranslationY()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForHome:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v2, v2, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForSwipe:F

    add-float/2addr v1, v2

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForSpringOnStash:F

    add-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public addOneTimePreDrawListener(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-static {p0, p1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    return-void
.end method

.method public addRevealAnimToIsStashed(Landroid/animation/AnimatorSet;ZJLandroid/view/animation/Interpolator;Z)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p3

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->getStashedHandleBounds(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v12

    div-float v13, v0, v1

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconTouchSize()I

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v14, v0

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    move v5, v0

    :goto_0
    if-ltz v5, :cond_6

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, v6, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarView;->getQsb()Landroid/view/View;

    move-result-object v0

    const/16 v16, 0x0

    if-ne v4, v0, :cond_0

    move/from16 v17, v15

    goto :goto_1

    :cond_0
    move/from16 v17, v16

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p2

    move v3, v13

    move-object/from16 v18, v4

    move/from16 v4, v17

    move v15, v5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/TaskbarViewController;->createRevealAnimForView(Landroid/view/View;ZFZZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v17, :cond_1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_2

    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    :goto_2
    iget v1, v11, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v2, v15

    mul-float/2addr v2, v13

    add-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    iget v1, v11, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/4 v2, 0x1

    add-int/lit8 v3, v12, -0x1

    sub-int/2addr v3, v15

    int-to-float v2, v3

    mul-float/2addr v2, v13

    sub-float/2addr v1, v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    sub-float/2addr v0, v1

    neg-float v0, v0

    goto :goto_3

    :cond_2
    sub-float v0, v1, v0

    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    new-array v4, v3, [F

    aput v0, v4, v16

    goto :goto_4

    :cond_3
    new-array v4, v2, [F

    aput v0, v4, v16

    aput v1, v4, v3

    :goto_4
    if-eqz p2, :cond_4

    new-array v0, v3, [F

    aput v14, v0, v16

    goto :goto_5

    :cond_4
    new-array v0, v2, [F

    aput v14, v0, v16

    aput v1, v0, v3

    :goto_5
    move-object/from16 v1, v18

    instance-of v2, v1, Lcom/android/launcher3/Reorderable;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/android/launcher3/Reorderable;

    invoke-interface {v1}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v5

    sget-object v3, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    invoke-static {v5, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v2

    invoke-static {v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/android/launcher3/taskbar/j4;

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/j4;-><init>(Lcom/android/launcher3/util/MultiTranslateDelegate;)V

    goto :goto_6

    :cond_5
    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/android/launcher3/taskbar/e4;

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/e4;-><init>(Landroid/view/View;)V

    :goto_6
    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v5, v15, -0x1

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public announceForAccessibility()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->announceAccessibilityChanges()V

    return-void
.end method

.method public areIconsVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->areIconsVisible()Z

    move-result p0

    return p0
.end method

.method public commitRunningAppsToUI()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitRunningAppsToUI()V

    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarViewController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ALPHA_INDEX_HOME"

    const-string v4, "ALPHA_INDEX_KEYGUARD"

    const-string v5, "ALPHA_INDEX_STASH"

    const-string v6, "ALPHA_INDEX_RECENTS_DISABLED"

    const-string v7, "ALPHA_INDEX_NOTIFICATION_EXPANDED"

    const-string v8, "ALPHA_INDEX_ASSISTANT_INVOKED"

    const-string v9, "ALPHA_INDEX_IME_BUTTON_NAV"

    const-string v10, "ALPHA_INDEX_SMALL_SCREEN"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "mTaskbarIconAlpha"

    invoke-virtual {v0, v1, p2, v4, v3}, Lcom/android/launcher3/util/MultiPropertyFactory;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAllAppsButtonView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getAllAppsButtonView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFirstIconMatch(Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/function/Predicate;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->getFirstMatch([Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getIconLayoutBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconLayoutBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getIconViews()[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarView;->getIconViews()[Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    return-object p0
.end method

.method public getTaskbarIconScaleForStash()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public getTaskbarIconTranslationYForStash()Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarView;->init(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070553

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    :cond_1
    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonTranslationY()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->getTaskbarNavButtonTranslationYForInAppDisplay()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationYForInAppDisplay:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {p1, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public isEventOverAnyItem(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->isEventOverAnyItem(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mDeviceProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {v0, v1}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->unregisterListeners()V

    return-void
.end method

.method public onRotationChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isIconAlignedWithHotseat()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowHeight(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarNavButtonTranslationY:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method public setClickAndLongClickListenersForIcon(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->setClickAndLongClickListenersForIcon(Landroid/view/View;)V

    return-void
.end method

.method public setDeferUpdatesForSUW(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->setDeferUpdatesForSUW(Z)V

    return-void
.end method

.method public setLauncherIconAlignment(FLcom/android/launcher3/DeviceProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isHotseatIconOnTopWhenAligned()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    if-eq v1, v0, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIsHotseatIconOnTopWhenAligned:Z

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->createIconAlignmentController(Lcom/android/launcher3/DeviceProfile;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-lez p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mIconAlignControllerLazy:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    :cond_3
    return-void
.end method

.method public setRecentsButtonDisabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x3

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

.method public setTranslationYForStash(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForSpringOnStash:F

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    return-void
.end method

.method public setTranslationYForSwipe(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarIconTranslationYForSwipe:F

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateTranslationY()V

    return-void
.end method

.method protected updateIconsBackground()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarView:Lcom/android/launcher3/taskbar/TaskbarView;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mLauncherThemedIconsBackgroundColor:I

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mTaskbarThemedIconsBackgroundColor:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mThemedIconsBackgroundProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-static {v1, v2, p0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarView;->setThemedIconsBackgroundColor(I)V

    return-void
.end method

.method public updateRunningApps()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarViewController;->mModelCallbacks:Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->updateRunningApps()V

    return-void
.end method
