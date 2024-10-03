.class final Lcom/android/quickstep/interaction/BackGestureTutorialController;
.super Lcom/android/quickstep/interaction/TutorialController;
.source "SourceFile"


# static fields
.field private static final EXITING_APP_MIN_SIZE_PERCENTAGE:F = 0.8f

.field private static final Y_TRANSLATION_SMOOTHENING_FACTOR:F = 0.2f


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/BackGestureTutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialController;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    sget-object p2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p1, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    iget v0, v0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorOnSurfaceBack:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p1, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    iget v0, v0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSurfaceBack:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p1, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    iget v0, v0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSecondaryBack:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v1, ".onSurfaceBack"

    const-string v3, ".surfaceBack"

    const-string v5, ".secondaryBack"

    invoke-static/range {v1 .. v6}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->updateColors(Lcom/airbnb/lottie/LottieAnimationView;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mCheckmarkAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    iget p0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorOnSurfaceBack:I

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    iget p0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSecondaryBack:I

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    iget p1, p1, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSurfaceBack:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, ".checkmark"

    const-string v1, ".checkmarkBackground"

    invoke-static {v0, p0, v1, p1}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/quickstep/util/LottieAnimationColorUtils;->updateColors(Lcom/airbnb/lottie/LottieAnimationView;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private handleBackAttempt(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->resetViewsForBackGesture()V

    :cond_0
    sget-object v1, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const p1, 0x7f120088

    goto :goto_0

    :pswitch_1
    const p1, 0x7f120089

    goto :goto_0

    :pswitch_2
    const p1, 0x7f120085

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(I)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->getMockAppTaskPreviousPageLayoutResId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->updateFakeAppTaskViewLayout(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->showSuccessFeedback()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDoneButtonColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorOnSurfaceBack:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSecondaryBack:I

    :goto_0
    return p0
.end method

.method public getDoneButtonTextAppearance()I
    .locals 0

    const p0, 0x7f130249

    return p0
.end method

.method protected getExitingAppColor()I
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    iget p0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSurfaceBack:I

    return p0
.end method

.method protected getFakeLauncherColor()I
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    iget p0, p0, Lcom/android/quickstep/interaction/RootSandboxLayout;->mColorSurfaceContainer:I

    return p0
.end method

.method protected getGestureLottieAnimationId()I
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isFoldable()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f110002

    goto :goto_0

    :cond_0
    const p0, 0x7f110003

    goto :goto_0

    :cond_1
    const p0, 0x7f110001

    :goto_0
    return p0
.end method

.method public getIntroductionSubtitle()I
    .locals 0

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f12008e

    goto :goto_0

    :cond_0
    const p0, 0x7f12008a

    :goto_0
    return p0
.end method

.method public getIntroductionTitle()I
    .locals 0

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f12008f

    goto :goto_0

    :cond_0
    const p0, 0x7f12008b

    :goto_0
    return p0
.end method

.method getMockAppTaskCurrentPageLayoutResId()I
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f0e003d

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0e0093

    goto :goto_0

    :cond_1
    const p0, 0x7f0e008e

    :goto_0
    return p0
.end method

.method protected getMockAppTaskLayoutResId()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->getMockAppTaskCurrentPageLayoutResId()I

    move-result p0

    return p0
.end method

.method getMockAppTaskPreviousPageLayoutResId()I
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f0e003d

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0e0094

    goto :goto_0

    :cond_1
    const p0, 0x7f0e008f

    :goto_0
    return p0
.end method

.method public getSpokenIntroductionSubtitle()I
    .locals 0

    const p0, 0x7f12008c

    return p0
.end method

.method public getSuccessFeedbackSubtitle()I
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isAtFinalStep()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f120087

    goto :goto_0

    :cond_0
    const p0, 0x7f120086

    :goto_0
    return p0
.end method

.method public getSuccessFeedbackTitle()I
    .locals 0

    const p0, 0x7f120105

    return p0
.end method

.method public getSuccessTitleTextAppearance()I
    .locals 0

    const p0, 0x7f13025c

    return p0
.end method

.method public getTitleTextAppearance()I
    .locals 0

    const p0, 0x7f130259

    return p0
.end method

.method public onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->skipGestureAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    if-ne p1, v0, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->close()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/BackGestureTutorialController;->handleBackAttempt(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onBackGestureProgress(FFZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->skipGestureAttempt()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mScreenWidth:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    move v0, p1

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    if-eqz p3, :cond_1

    iget v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mScreenWidth:F

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    iget v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppMargin:F

    move v0, p1

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    if-eqz p3, :cond_2

    const/4 p3, -0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    :goto_1
    int-to-float p3, p3

    mul-float/2addr v0, p3

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppStartingCornerRadius:F

    iget v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppEndingCornerRadius:F

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppRadius:I

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->skipGestureAttempt()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    sget-object v0, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION_COMPLETE:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->close()V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-ne p2, v0, :cond_3

    sget-object p2, Lcom/android/quickstep/interaction/BackGestureTutorialController$1;->$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const p1, 0x7f120088

    goto :goto_0

    :cond_2
    const p1, 0x7f120089

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(I)V

    :cond_3
    :goto_1
    return-void
.end method
