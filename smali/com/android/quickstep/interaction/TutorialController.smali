.class abstract Lcom/android/quickstep/interaction/TutorialController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;
.implements Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/interaction/TutorialController$TutorialType;
    }
.end annotation


# static fields
.field private static final ADVANCE_TUTORIAL_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_PIXEL_TIPS_APP_NAME:Ljava/lang/CharSequence;

.field private static final FEEDBACK_ANIMATION_MS:I = 0x85

.field private static final FINGER_DOT_ANIMATION_DURATION_MILLIS:I = 0x1f4

.field private static final FINGER_DOT_SMALL_SCALE:F = 0.7f

.field private static final FINGER_DOT_VISIBLE_ALPHA:F = 0.7f

.field private static final GESTURE_ANIMATION_DELAY_MS:I = 0x5dc

.field private static final GESTURE_ANIMATION_PAUSE_DURATION_MILLIS:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "TutorialController"

.field private static final PIXEL_TIPS_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.tips"

.field private static final RIPPLE_VISIBLE_MS:I = 0x12c


# instance fields
.field protected mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mCheckmarkAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field final mContext:Landroid/content/Context;

.field final mDoneButton:Landroid/widget/Button;

.field final mEdgeGestureVideoView:Landroid/widget/ImageView;

.field protected mExitingAppEndingCornerRadius:F

.field protected mExitingAppMargin:F

.field protected mExitingAppRadius:I

.field private final mExitingAppRect:Landroid/graphics/Rect;

.field protected mExitingAppStartingCornerRadius:F

.field protected mExitingAppView:Landroid/view/View;

.field final mFakeHotseatView:Landroid/widget/FrameLayout;

.field final mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

.field final mFakeLauncherView:Landroid/widget/RelativeLayout;

.field final mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

.field final mFakeTaskView:Landroid/widget/FrameLayout;

.field private mFakeTaskViewCallback:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFakeTaskbarViewCallback:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mFeedbackSubtitleView:Landroid/widget/TextView;

.field final mFeedbackTitleView:Landroid/widget/TextView;

.field final mFeedbackView:Landroid/view/ViewGroup;

.field private mFeedbackViewCallback:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mFingerDotView:Landroid/widget/ImageView;

.field private mFullGestureDemonstration:Landroid/widget/RelativeLayout;

.field private mGestureCompleted:Z

.field mHotseatIconView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field final mRippleView:Landroid/view/View;

.field protected mScreenHeight:I

.field protected mScreenWidth:F

.field private final mShowFeedbackRunnable:Ljava/lang/Runnable;

.field final mSkipButton:Landroid/widget/TextView;

.field private final mSkipTutorialDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mTitleViewCallback:Ljava/lang/Runnable;

.field final mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

.field final mTutorialStepView:Lcom/android/quickstep/interaction/TutorialStepIndicator;

.field mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Pixel Tips"

    sput-object v0, Lcom/android/quickstep/interaction/TutorialController;->DEFAULT_PIXEL_TIPS_APP_NAME:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(Lcom/android/quickstep/interaction/TutorialFragment;Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    iput-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v0

    const v1, 0x7f0b01b3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/quickstep/interaction/f0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/f0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const v2, 0x7f0b01b6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    const v3, 0x7f0b01b5

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackSubtitleView:Landroid/widget/TextView;

    const v3, 0x7f0b01aa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    const v3, 0x7f0b01ad

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeLauncherView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b01ab

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const v3, 0x7f0b01ac

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/ClipIconView;

    iput-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    const v3, 0x7f0b01af

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const v4, 0x7f0b01b0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    :goto_0
    iput-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    const v4, 0x7f0b01ae

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/interaction/AnimatedTaskView;

    iput-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    const v4, 0x7f0b01c0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    iput-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const v4, 0x7f0b01b2

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    const v4, 0x7f0b01b7

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/interaction/TutorialStepIndicator;

    iput-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialStepView:Lcom/android/quickstep/interaction/TutorialStepIndicator;

    const v4, 0x7f0b01b1

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->createSkipTutorialDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipTutorialDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0b01a1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFullGestureDemonstration:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b00ef

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mCheckmarkAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x7f0b01a5

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    const v3, 0x7f0b0177

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/TutorialFragment;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mScreenWidth:F

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/TutorialFragment;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iput p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mScreenHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701cf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppMargin:F

    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppStartingCornerRadius:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701ce

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppEndingCornerRadius:F

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/android/quickstep/interaction/h0;

    invoke-direct {p2, p0}, Lcom/android/quickstep/interaction/h0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getIntroductionTitle()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getIntroductionSubtitle()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    new-instance p2, Lcom/android/quickstep/interaction/TutorialController$1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/interaction/TutorialController$1;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1
    new-instance p1, Lcom/android/quickstep/interaction/j0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/interaction/j0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTitleViewCallback:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/quickstep/interaction/m0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/interaction/m0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mShowFeedbackRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/interaction/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->lambda$new$1()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/interaction/TutorialController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quickstep/interaction/TutorialController;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialController;->lambda$createSkipTutorialDialog$9(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/interaction/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->lambda$showFakeTaskbar$6()V

    return-void
.end method

.method private createScalingMatrix(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 5

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mScreenWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    iget v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mScreenHeight:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private createSkipTutorialDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 10

    const-string v0, "TutorialController"

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    instance-of v2, v1, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    check-cast v1, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    const v2, 0x7f0e008b

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    const v4, 0x7f1302ac

    invoke-direct {v3, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/android/quickstep/interaction/TutorialController;->DEFAULT_PIXEL_TIPS_APP_NAME:Ljava/lang/CharSequence;

    :try_start_0
    const-string v6, "com.google.android.apps.tips"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v6, "Could not find app label for package name: com.google.android.apps.tips. Defaulting to \'Pixel Tips.\'"

    invoke-static {v0, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const v4, 0x7f0b01a8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    const v7, 0x7f12024b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v4, "No subtitle view in the skip tutorial dialog to update."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const v4, 0x7f0b01a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_2

    new-instance v5, Lcom/android/quickstep/interaction/z;

    invoke-direct {v5, v3}, Lcom/android/quickstep/interaction/z;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    const-string v4, "No cancel button in the skip tutorial dialog to update."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const v4, 0x7f0b01a7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v2, :cond_3

    new-instance v0, Lcom/android/quickstep/interaction/g0;

    invoke-direct {v0, p0, v3}, Lcom/android/quickstep/interaction/g0;-><init>(Lcom/android/quickstep/interaction/TutorialController;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    const-string p0, "No confirm button in the skip tutorial dialog to update."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method public static synthetic d(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->lambda$createSkipTutorialDialog$8(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/interaction/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/interaction/TutorialController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/interaction/TutorialController;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->createScalingMatrix(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/quickstep/interaction/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic i(Lcom/android/quickstep/interaction/TutorialController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/TutorialController;->lambda$showRippleEffect$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/quickstep/interaction/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->lambda$hideFakeTaskbar$5()V

    return-void
.end method

.method public static synthetic k(Lcom/android/quickstep/interaction/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->lambda$updateDrawables$7()V

    return-void
.end method

.method private static synthetic lambda$createSkipTutorialDialog$8(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createSkipTutorialDialog$9(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorialStep(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$hideFakeTaskbar$5()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->animateDisappearanceToHotseat(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->showSkipTutorialDialog()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isAtFinalStep()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/quickstep/interaction/d0;

    invoke-direct {v1, v0}, Lcom/android/quickstep/interaction/d0;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x85

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/quickstep/interaction/l0;

    invoke-direct {v3, p0}, Lcom/android/quickstep/interaction/l0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTitleViewCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$showFakeTaskbar$6()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->animateAppearanceFromHotseat(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic lambda$showRippleEffect$4(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateDrawables$7()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method private playFeedbackAnimation(Landroid/animation/Animator;Landroid/graphics/drawable/AnimatedVectorDrawable;Ljava/lang/Runnable;Z)V
    .locals 7
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/AnimatedVectorDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFullGestureDemonstration:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_2
    new-instance v0, Lcom/android/quickstep/interaction/TutorialController$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/interaction/TutorialController$2;-><init>(Lcom/android/quickstep/interaction/TutorialController;Landroid/graphics/drawable/AnimatedVectorDrawable;ZLjava/lang/Runnable;Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->cancelQueuedGestureAnimation()V

    if-eqz p4, :cond_3

    iput-object p3, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    new-instance p2, Lcom/android/quickstep/interaction/i0;

    invoke-direct {p2, p1}, Lcom/android/quickstep/interaction/i0;-><init>(Landroid/animation/Animator;)V

    iput-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    const-wide/16 p2, 0x5dc

    invoke-virtual {p1, p0, p2, p3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method private showSkipTutorialDialog()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipTutorialDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private showSuccessPage()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->pauseAndHideLottieAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mCheckmarkAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mCheckmarkAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getSuccessTitleTextAppearance()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method private startGestureAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getGestureLottieAnimationId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private updateDrawables()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockWallpaperResId()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->updateFeedbackAnimation()Z

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeLauncherView:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getFakeLauncherColor()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    const v3, 0x7f0600ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockHotseatResId()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/quickstep/interaction/TutorialController;->updateFakeViewLayout(Landroid/view/ViewGroup;I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const v2, 0x7f0b01e0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/quickstep/interaction/b0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/b0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-static {v2}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakePreviousTaskView:Lcom/android/quickstep/interaction/AnimatedTaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockPreviousAppTaskThumbnailColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/quickstep/interaction/AnimatedTaskView;->setFakeTaskViewFillColor(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeIconView:Lcom/android/launcher3/views/ClipIconView;

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockAppIconResId()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getExitingAppColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getFakeTaskViewColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/TutorialController;->updateHotseatChildViewColor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b01e1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/TutorialController;->updateHotseatChildViewColor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b01e2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/TutorialController;->updateHotseatChildViewColor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b01e3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/TutorialController;->updateHotseatChildViewColor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/TutorialController;->updateHotseatChildViewColor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b01e5

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/TutorialController;->updateHotseatChildViewColor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    const v1, 0x7f0b01e6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/TutorialController;->updateHotseatChildViewColor(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getMockAppTaskLayoutResId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/interaction/TutorialController;->updateFakeViewLayout(Landroid/view/ViewGroup;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateHotseatChildViewColor(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getHotseatIconColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method private updateLayout()V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v2

    const v3, 0x7f070203

    const v4, 0x7f0701dd

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v2}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f070204

    goto :goto_2

    :cond_3
    const v2, 0x7f0701de

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v1

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0xc

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialFragment;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v5, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    iget-boolean v5, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v1

    if-eqz v1, :cond_7

    move v2, v3

    goto :goto_4

    :cond_6
    move v2, v4

    :cond_7
    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_5

    :cond_8
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_5
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSubtext()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialStepView:Lcom/android/quickstep/interaction/TutorialStepIndicator;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialFragment;->getCurrentStep()I

    move-result v1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getNumSteps()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/interaction/TutorialStepIndicator;->setTutorialProgress(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method cancelQueuedGestureAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTitleViewCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected createAnimationPause()Landroid/animation/Animator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected createFingerDotAppearanceAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected createFingerDotDisappearanceAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 5

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFingerDotView:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object p0

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method fadeTaskViewAndRun(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public abstract getDoneButtonColor()I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end method

.method public getDoneButtonTextAppearance()I
    .locals 0
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method protected getExitingAppColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getFakeLauncherColor()I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end method

.method protected getFakeTaskViewColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected getGestureLottieAnimationId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected getHotseatIconColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getHotseatIconLeft()I
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getHotseatIconTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mHotseatIconView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getIntroductionSubtitle()I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public getIntroductionTitle()I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public getMockAppIconResId()I
    .locals 0
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0803a8

    goto :goto_0

    :cond_0
    const p0, 0x7f08024a

    :goto_0
    return p0
.end method

.method protected getMockAppTaskLayoutResId()I
    .locals 0
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method protected getMockHotseatResId()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isFoldable()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0e012b

    goto :goto_0

    :cond_0
    const p0, 0x7f0e012e

    goto :goto_0

    :cond_1
    const p0, 0x7f0e012d

    :goto_0
    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isFoldable()Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f0e008c

    goto :goto_1

    :cond_3
    const p0, 0x7f0e0095

    goto :goto_1

    :cond_4
    const p0, 0x7f0e0090

    :goto_1
    return p0
.end method

.method protected getMockPreviousAppTaskThumbnailColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0600ea

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getMockWallpaperResId()I
    .locals 0
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    const p0, 0x7f08024c

    return p0
.end method

.method public getSpokenIntroductionSubtitle()I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public getSuccessFeedbackSubtitle()I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public getSuccessFeedbackTitle()I
    .locals 0
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public getSuccessTitleTextAppearance()I
    .locals 0
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public getTitleTextAppearance()I
    .locals 0
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method hideActionButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method hideFakeTaskbar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/quickstep/interaction/a0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/interaction/a0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    :cond_2
    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method hideFeedback()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->cancelQueuedGestureAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public isGestureCompleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    return p0
.end method

.method onActionButtonClicked(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->continueTutorial()V

    return-void
.end method

.method pauseAndHideLottieAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mAnimatedGestureDemonstration:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFullGestureDemonstration:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected resetViewsForBackGesture()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getFakeTaskViewColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mScreenWidth:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/quickstep/interaction/TutorialController;->mScreenHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iput v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppRadius:I

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->resetPivot()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mExitingAppView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public setGestureCompleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    return-void
.end method

.method setRippleHotspot(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    return-void
.end method

.method setTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    return-void
.end method

.method showActionButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/quickstep/interaction/e0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/e0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method showFakeTaskbar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/quickstep/interaction/k0;

    invoke-direct {p1, p0}, Lcom/android/quickstep/interaction/k0;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    :cond_2
    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarView:Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskbarViewCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method showFeedback()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureAnimation()Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialFragment;->getEdgeAnimation()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mShowFeedbackRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/quickstep/interaction/TutorialController;->playFeedbackAnimation(Landroid/animation/Animator;Landroid/graphics/drawable/AnimatedVectorDrawable;Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method showFeedback(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(IZ)V

    return-void
.end method

.method showFeedback(IIIZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTitleViewCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackSubtitleView:Landroid/widget/TextView;

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/launcher3/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_5

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/TutorialFragment;->isAtFinalStep()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->showActionButton()V

    :cond_3
    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskViewCallback:Ljava/lang/Runnable;

    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->showSuccessPage()V

    :cond_5
    iput-boolean p4, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureAnimation()Landroid/animation/Animator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p2}, Lcom/android/quickstep/interaction/TutorialFragment;->getEdgeAnimation()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p2

    if-nez p4, :cond_6

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget-object p3, p0, Lcom/android/quickstep/interaction/TutorialController;->mShowFeedbackRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/quickstep/interaction/TutorialController;->playFeedbackAnimation(Landroid/animation/Animator;Landroid/graphics/drawable/AnimatedVectorDrawable;Ljava/lang/Runnable;Z)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p1}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mShowFeedbackRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackViewCallback:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method showFeedback(IZ)V
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getSuccessFeedbackTitle()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f120109

    :goto_0
    move v2, v0

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(IIIZZ)V

    return-void
.end method

.method showRippleEffect(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mRippleView:Landroid/view/View;

    new-instance v1, Lcom/android/quickstep/interaction/c0;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/interaction/c0;-><init>(Lcom/android/quickstep/interaction/TutorialController;Ljava/lang/Runnable;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method showSuccessFeedback()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getSuccessFeedbackSubtitle()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot show success feedback for tutorial step: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", no success feedback subtitle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v3, "TutorialController"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(IZ)V

    return-void
.end method

.method public skipGestureAttempt()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->isGestureCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isRotationPromptShowing()Z

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

.method transitToController()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->updateCloseButton()V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->updateSubtext()V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->updateDrawables()V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->updateLayout()V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_GESTURE_NAV_TUTORIAL:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFeedbackTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getTitleTextAppearance()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getDoneButtonTextAppearance()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->getDoneButtonColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mCheckmarkAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialFragment:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialFragment;->isAtFinalStep()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f110004

    goto :goto_0

    :cond_0
    const v1, 0x7f110005

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->isGestureCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mCheckmarkAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialController;->startGestureAnimation()V

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    sget-object v1, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->resetViewsForBackGesture()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->hideFeedback()V

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->hideActionButton()V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mGestureCompleted:Z

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeHotseatView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method updateCloseButton()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mSkipButton:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f130250

    goto :goto_0

    :cond_0
    const p0, 0x7f130251

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method updateFakeAppTaskViewLayout(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialController;->mFakeTaskView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/interaction/TutorialController;->updateFakeViewLayout(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method updateFakeViewLayout(Landroid/view/ViewGroup;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
