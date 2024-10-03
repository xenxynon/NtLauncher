.class public Lcom/android/launcher3/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;"
    }
.end annotation


# static fields
.field public static final ALL_APPS_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/AllAppsTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/AllAppsTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/AllAppsTransitionController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasScaleEffect:Z

.field private mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView<",
            "*>;"
        }
    .end annotation
.end field

.field private mIsTablet:Z

.field private mIsVerticalLayout:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mNavScrimFlag:I

.field private mProgress:F

.field private mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private mShiftRange:F

.field private mShouldControlKeyboard:Z

.field private final mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;

    const-string v1, "allAppsProgress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;

    const-string v1, "allAppsPullBackTranslation"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;

    const-string v1, "allAppsPullBackAlpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/allapps/m;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/m;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    iget-boolean v3, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    const v3, 0x7f0402a4

    invoke-static {p1, v3}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iput v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNavScrimFlag:I

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setShiftRange(F)V

    iput v2, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-interface {p1, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    sget-object v0, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/VibratorWrapper;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onScaleProgressChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AllAppsTransitionController;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewPullbackTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewPullbackAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->lambda$setStateWithAnimation$0(Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    return-void
.end method

.method private getAppsViewProgressAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method private getAppsViewProgressTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method private getAppsViewPullbackAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method private getAppsViewPullbackTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setStateWithAnimation$0(Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_TRANSLATION:Landroid/util/FloatProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PULL_BACK_ALPHA:Landroid/util/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-boolean p1, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShouldControlKeyboard:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method private onProgressAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    invoke-virtual {v0}, Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;->reset()V

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShouldControlKeyboard:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    :cond_0
    return-void
.end method

.method private onScaleProgressChanged()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/ScrimView;->setScrimHeaderScale(F)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v4

    cmpg-float v5, v0, v2

    if-gez v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHasScaleEffect:Z

    if-eq v0, v2, :cond_4

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHasScaleEffect:Z

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    if-eqz v0, :cond_3

    invoke-static {v1, p0, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;Z)V

    goto :goto_2

    :cond_3
    invoke-static {v1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->restoreClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static restoreClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewParent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b0317

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_1
    if-ne p0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->restoreClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;)V

    :cond_3
    return-void
.end method

.method private static setClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;Z)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewParent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    if-eq v1, p2, :cond_1

    const v2, 0x7f0b0317

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    if-ne p0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setClipChildrenOnViewTree(Landroid/view/View;Landroid/view/ViewParent;Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public animateAllAppsToNoScale()V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public varargs createSpringAnimation([F)Landroid/animation/Animator;
    .locals 1

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public exitAllAppsState(Lcom/android/launcher3/LauncherState;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->exitAllAppsState()V

    :cond_0
    return-void
.end method

.method public forceResetProgressIfNeed(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public getProgress()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    return p0
.end method

.method public getProgressAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/n;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/n;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method public getShiftRange()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    return p0
.end method

.method public onBackProgressed(Lcom/android/launcher3/LauncherState;F)V
    .locals 2
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->PREDICTIVE_BACK_DECELERATED_EASE:Landroid/view/animation/Interpolator;

    invoke-interface {p1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    const p2, 0x3f666666    # 0.9f

    const v0, 0x3dccccd0    # 0.100000024f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v1, v0

    add-float/2addr v1, p2

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onBackProgressed(Ljava/lang/Object;F)V
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onBackProgressed(Lcom/android/launcher3/LauncherState;F)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsShiftRange:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setShiftRange(F)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTablet:Z

    return-void
.end method

.method public setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0xa

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v3, v4}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewProgressAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    invoke-virtual {p3, v4, v5, v8, v3}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewPullbackAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v4

    if-eqz v0, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v7

    :goto_2
    invoke-virtual {p3, v4, v5, v8, v3}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->BOTTOM_SHEET_ALPHA:Landroid/util/FloatProperty;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v6, v7

    :goto_3
    const/16 v0, 0x13

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0, v5}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p3, v3, v4, v6, v0}, Lcom/android/launcher3/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/android/launcher3/states/StateAnimationConfig;->hasAnimationFlag(I)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq p2, p1, :cond_5

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    if-ne p1, p2, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    goto :goto_5

    :cond_6
    const/4 p0, 0x0

    :goto_5
    invoke-virtual {p1, p0}, Lcom/android/launcher3/views/ScrimView;->setDrawingController(Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getAppsViewProgressTranslationY()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->onAllAppsTransition(F)V

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getNavBarScrimHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNavScrimFlag:I

    :cond_1
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    return-void
.end method

.method public setShiftRange(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->exitAllAppsState(Lcom/android/launcher3/LauncherState;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    new-instance v0, Lcom/android/launcher3/states/StateAnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/states/StateAnimationConfig;-><init>()V

    sget-object v1, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShouldControlKeyboard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    :cond_0
    new-instance v0, Lcom/android/launcher3/allapps/o;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/allapps/o;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/states/StateAnimationConfig;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    :cond_1
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_PREMIUM_HAPTICS_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_3

    const v0, 0x3f333333    # 0.7f

    if-ne p1, v1, :cond_2

    new-instance v1, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/util/VibratorWrapper;FF)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$VibrationAnimatorUpdateListener;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/util/VibratorWrapper;FF)V

    :goto_0
    invoke-virtual {p3, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mVibratorWrapper:Lcom/android/launcher3/util/VibratorWrapper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/allapps/p;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/p;-><init>(Lcom/android/launcher3/util/VibratorWrapper;)V

    invoke-virtual {p3, v1}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->exitAllAppsState(Lcom/android/launcher3/LauncherState;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setAlphas(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PropertySetter;)V

    return-void

    :cond_4
    iget-boolean v1, p2, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_7:Landroid/view/animation/Interpolator;

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    aput v4, v3, v2

    const/4 v2, 0x1

    aput v0, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->createSpringAnimation([F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    goto :goto_1
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public setupViews(Lcom/android/launcher3/views/ScrimView;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/ScrimView;",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/Launcher;",
            ">;",
            "Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setScrimView(Lcom/android/launcher3/views/ScrimView;)V

    new-instance p1, Lcom/android/launcher3/util/MultiValueAlpha;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    const/4 p3, 0x2

    invoke-direct {p1, p2, p3}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    new-instance p1, Lcom/android/launcher3/util/MultiPropertyFactory;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHiddenAppsPagedView:Lcom/nothing/launcher/hiddenapps/NTHiddenAppsPagedView;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/launcher3/allapps/l;->a:Lcom/android/launcher3/allapps/l;

    invoke-direct {p1, v0, v1, p3, v2}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsViewTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSearchConfig()Lcom/android/launcher3/allapps/BaseSearchConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseSearchConfig;->isKeyboardSyncEnabled()Z

    move-result p1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShouldControlKeyboard:Z

    return-void
.end method
