.class public Lcom/android/quickstep/RecentsAnimationDeviceState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# static fields
.field private static final QUICKSTEP_TOUCH_SLOP_RATIO_GESTURAL:F = 2.0f

.field private static final QUICKSTEP_TOUCH_SLOP_RATIO_TWO_BUTTON:F = 9.0f

.field static final SUPPORT_ONE_HANDED_MODE:Ljava/lang/String; = "ro.support_one_handed_mode"


# instance fields
.field private mAssistantAvailable:Z

.field private mAssistantVisibility:F

.field private final mCanImeRenderGesturalNavButtons:Z

.field private final mContext:Landroid/content/Context;

.field private final mDeferredGestureRegion:Landroid/graphics/Region;

.field private final mDisplayController:Lcom/android/launcher3/util/DisplayController;

.field private final mDisplayId:I

.field private mExclusionListener:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

.field private mExclusionRegion:Landroid/graphics/Region;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mGestureBlockingTaskId:I

.field private mIsOneHandedModeEnabled:Z

.field private final mIsOneHandedModeSupported:Z

.field private mIsSwipeToNotificationEnabled:Z

.field private mIsUserSetupComplete:Z

.field private mIsUserUnlocked:Z

.field private mMode:Lcom/android/launcher3/util/NavigationMode;

.field private mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

.field private final mOnDestroyActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPipIsActive:Z

.field private final mPipListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

.field private mSystemUiStateFlags:I

.field private final mUserUnlockedActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/inputmethodservice/InputMethodService;->canImeRenderGesturalNavButtons()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mCanImeRenderGesturalNavButtons:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mOnDestroyActions:Ljava/util/ArrayList;

    const/high16 v0, 0x10000000

    iput v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    sget-object v0, Lcom/android/launcher3/util/NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/NavigationMode;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDeferredGestureRegion:Landroid/graphics/Region;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedActions:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/quickstep/f5;

    invoke-direct {v1, p0}, Lcom/android/quickstep/f5;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mGestureBlockingTaskId:I

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    iput-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayId:I

    const-string v3, "ro.support_one_handed_mode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeSupported:Z

    sget-object v4, Lcom/android/quickstep/RotationTouchHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/RotationTouchHelper;

    iput-object v4, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    if-eqz p2, :cond_0

    invoke-virtual {v4}, Lcom/android/quickstep/RotationTouchHelper;->init()V

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/quickstep/d5;

    invoke-direct {p2, v4}, Lcom/android/quickstep/d5;-><init>(Lcom/android/quickstep/RotationTouchHelper;)V

    invoke-direct {p0, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    :cond_0
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserUnlocked:Z

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_1
    new-instance p2, Lcom/android/quickstep/m5;

    invoke-direct {p2, p0}, Lcom/android/quickstep/m5;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {p0, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    new-instance p2, Lcom/android/quickstep/RecentsAnimationDeviceState$1;

    invoke-direct {p2, p0, v2}, Lcom/android/quickstep/RecentsAnimationDeviceState$1;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;I)V

    iput-object p2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionListener:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/quickstep/e5;

    invoke-direct {v0, p2}, Lcom/android/quickstep/e5;-><init>(Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p2

    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    new-instance p2, Lcom/android/quickstep/o5;

    invoke-direct {p2, p0}, Lcom/android/quickstep/o5;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {p0, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    sget-object p2, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    if-eqz v3, :cond_2

    const-string p2, "one_handed_mode_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Lcom/android/quickstep/i5;

    invoke-direct {v0, p0}, Lcom/android/quickstep/i5;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    new-instance v1, Lcom/android/quickstep/l5;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/quickstep/l5;-><init>(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    :goto_0
    const-string p2, "swipe_bottom_to_notification_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Lcom/android/quickstep/g5;

    invoke-direct {v0, p0}, Lcom/android/quickstep/g5;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsSwipeToNotificationEnabled:Z

    new-instance v1, Lcom/android/quickstep/j5;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/quickstep/j5;-><init>(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    const-string p2, "user_setup_complete"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserSetupComplete:Z

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/quickstep/h5;

    invoke-direct {v0, p0}, Lcom/android/quickstep/h5;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    new-instance v1, Lcom/android/quickstep/k5;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/quickstep/k5;-><init>(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2, v2}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipIsActive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lcom/android/quickstep/RecentsAnimationDeviceState$2;

    invoke-direct {p1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState$2;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    new-instance p1, Lcom/android/quickstep/n5;

    invoke-direct {p1, p0}, Lcom/android/quickstep/n5;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$5(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionRegion:Landroid/graphics/Region;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipIsActive:Z

    return p1
.end method

.method public static synthetic b(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$6(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$8(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$4(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$addNavigationModeChangedCallback$10(Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$1()V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$9()V

    return-void
.end method

.method public static synthetic h(Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$addNavigationModeChangedCallback$11(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$0(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$7(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$2()V

    return-void
.end method

.method public static synthetic l(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->lambda$new$3(Z)V

    return-void
.end method

.method private static synthetic lambda$addNavigationModeChangedCallback$10(Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$addNavigationModeChangedCallback$11(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserUnlocked:Z

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->notifyUserUnlocked()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$3(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    return-void
.end method

.method private static synthetic lambda$new$4(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$5(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsSwipeToNotificationEnabled:Z

    return-void
.end method

.method private static synthetic lambda$new$6(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$7(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserSetupComplete:Z

    return-void
.end method

.method private static synthetic lambda$new$8(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method private synthetic lambda$new$9()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method private notifyUserUnlocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    return-void
.end method

.method private runOnDestroy(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mOnDestroyActions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addNavigationModeChangedCallback(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/android/quickstep/b5;

    invoke-direct {v0, p1}, Lcom/android/quickstep/b5;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    new-instance p1, Lcom/android/quickstep/c5;

    invoke-direct {p1, p0, v0}, Lcom/android/quickstep/c5;-><init>(Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->runOnDestroy(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canStartSystemGesture()Z
    .locals 4

    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v0}, Lcom/android/quickstep/RotationTouchHelper;->isTaskListFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_3

    and-int/lit8 v0, p0, 0x40

    if-nez v0, :cond_3

    and-int/lit16 v0, p0, 0x800

    if-nez v0, :cond_3

    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_2

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_3

    :cond_2
    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public canTriggerAssistantAction(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mAssistantAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RotationTouchHelper;->touchInAssistantRegion(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isLockToAppActive()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {v2, p1}, Lcom/android/quickstep/RotationTouchHelper;->touchInOneHandedModeRegion(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, p1, :cond_1

    invoke-static {}, Lcom/android/quickstep/utils/GameModeHelper;->getInstance()Lcom/android/quickstep/utils/GameModeHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/utils/GameModeHelper;->isMisTouchPreventionActive(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public destroy()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mOnDestroyActions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "DeviceState:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canStartSystemGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canStartSystemGesture()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  systemUiFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  systemUiFlagsDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getSystemUiStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  assistantAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mAssistantAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  assistantDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isUserUnlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isOneHandedModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isSwipeToNotificationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsSwipeToNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  deferredGestureRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDeferredGestureRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  exclusionRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  pipIsActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAssistantVisibility()F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mAssistantVisibility:F

    return p0
.end method

.method public getDisplayId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDisplayId:I

    return p0
.end method

.method public getNavBarPosition()Lcom/android/quickstep/util/NavBarPosition;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    return-object p0
.end method

.method public getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    return-object p0
.end method

.method public getSquaredTouchSlop()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41100000    # 9.0f

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public getSystemUiStateFlags()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    return p0
.end method

.method public getSystemUiStateString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAccessibilityMenuAvailable()Z
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAccessibilityMenuShortcutAvailable()Z
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAssistantGestureIsConstrained()Z
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBubblesExpanded()Z
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isButtonNavMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v0, Lcom/android/launcher3/util/NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullyGesturalNavMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v0, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGesturalNavMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/NavigationMode;

    iget-boolean p0, p0, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    return p0
.end method

.method public isGestureBlockedTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTaskId()I

    move-result p1

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mGestureBlockingTaskId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeDisabled()Z
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isImeRenderingNavButtons()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mCanImeRenderGesturalNavButtons:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInDeferredGestureRegion(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDeferredGestureRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isInExclusionRegion(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKeyguardShowingOccluded()Z
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockToAppActive()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockToAppActive()Z

    move-result p0

    return p0
.end method

.method public isNeedToPreventMisTouch()Z
    .locals 1

    invoke-static {}, Lcom/android/quickstep/utils/GameModeHelper;->getInstance()Lcom/android/quickstep/utils/GameModeHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/utils/GameModeHelper;->isNeedToPreventMisTouch(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isNotificationPanelExpanded()Z
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOneHandedModeActive()Z
    .locals 1

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOneHandedModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsOneHandedModeEnabled:Z

    return p0
.end method

.method public isOverviewDisabled()Z
    .locals 0

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPipActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mPipIsActive:Z

    return p0
.end method

.method public isScreenPinningActive()Z
    .locals 1

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeToNotificationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsSwipeToNotificationEnabled:Z

    return p0
.end method

.method public isSystemUiDialogShowing()Z
    .locals 1

    iget p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTwoButtonNavMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v0, Lcom/android/launcher3/util/NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/NavigationMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserSetupComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserSetupComplete:Z

    return p0
.end method

.method public isUserUnlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserUnlocked:Z

    return p0
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    and-int/lit8 p1, p3, 0x12

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/NavigationMode;

    new-instance p3, Lcom/android/quickstep/util/NavBarPosition;

    invoke-direct {p3, p1, p2}, Lcom/android/quickstep/util/NavBarPosition;-><init>(Lcom/android/launcher3/util/NavigationMode;Lcom/android/launcher3/util/DisplayController$Info;)V

    iput-object p3, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    iget-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object p2, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mExclusionListener:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->register()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->unregister()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOneHandedModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mRotationTouchHelper:Lcom/android/quickstep/RotationTouchHelper;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;->setGesturalHeight(I)V

    return-void
.end method

.method public runOnUserUnlocked(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mIsUserUnlocked:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mUserUnlockedActions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setAccidentalGestureTriggerTime(J)V
    .locals 0

    invoke-static {}, Lcom/android/quickstep/utils/GameModeHelper;->getInstance()Lcom/android/quickstep/utils/GameModeHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/utils/GameModeHelper;->setAccidentalGestureTriggerTime(J)V

    return-void
.end method

.method public setAssistantAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mAssistantAvailable:Z

    return-void
.end method

.method public setAssistantVisibility(F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mAssistantVisibility:F

    return-void
.end method

.method public setDeferredGestureRegion(Landroid/graphics/Region;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mDeferredGestureRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public setGestureBlockingTaskId(I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mGestureBlockingTaskId:I

    return-void
.end method

.method public setSystemUiFlags(I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState;->mSystemUiStateFlags:I

    return-void
.end method
