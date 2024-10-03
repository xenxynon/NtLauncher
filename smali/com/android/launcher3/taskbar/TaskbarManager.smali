.class public Lcom/android/launcher3/taskbar/TaskbarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FLAG_HIDE_NAVBAR_WINDOW:Z

.field private static final NAV_BAR_KIDS_MODE:Landroid/net/Uri;

.field private static final USER_SETUP_COMPLETE_URI:Landroid/net/Uri;


# instance fields
.field private mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field private final mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mDebugActivityDeviceProfileChanged:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

.field private final mDispInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

.field private final mDisplayController:Lcom/android/launcher3/util/DisplayController;

.field private final mNavBarKidsModeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private final mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

.field private mNavMode:Lcom/android/launcher3/util/NavigationMode;

.field private final mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

.field private final mShutdownReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mTaskbarBroadcastReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private final mTaskbarPinningPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mUnfoldProgressProvider:Lt0/h;

.field private final mUserSetupCompleteListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private mUserUnlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.wm.debug.hide_navbar_window"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    const-string v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarManager;->USER_SETUP_COMPLETE_URI:Landroid/net/Uri;

    const-string v0, "nav_bar_kids_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarManager;->NAV_BAR_KIDS_MODE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/taskbar/unfold/NonDestroyableScopedUnfoldTransitionProgressProvider;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/unfold/NonDestroyableScopedUnfoldTransitionProgressProvider;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lt0/h;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarSharedState;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    new-instance v1, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v2, Lcom/android/launcher3/taskbar/x2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/x2;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarBroadcastReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/taskbar/q2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/q2;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarPinningPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v1, Lcom/android/launcher3/taskbar/r2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/r2;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDebugActivityDeviceProfileChanged:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const/16 v2, 0x7e8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/Service;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p1, v3, v4}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;-><init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/SystemUiProxy;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    new-instance p1, Lcom/android/launcher3/taskbar/u2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/u2;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserSetupCompleteListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    new-instance v2, Lcom/android/launcher3/taskbar/t2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/t2;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavBarKidsModeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarManager$1;

    invoke-direct {v3, p0}, Lcom/android/launcher3/taskbar/TaskbarManager$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    new-instance v4, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v5, Lcom/android/launcher3/taskbar/y2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/taskbar/y2;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    invoke-direct {v4, v5}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mShutdownReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v5, Lcom/android/launcher3/taskbar/s2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/taskbar/s2;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    iput-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDispInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    iput-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavMode:Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/SettingsCache;

    sget-object v5, Lcom/android/launcher3/taskbar/TaskbarManager;->USER_SETUP_COMPLETE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    sget-object p1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarManager;->NAV_BAR_KIDS_MODE:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/taskbar/w2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/w2;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "TaskbarManager created"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarManager;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/TaskbarManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/taskbar/TaskbarManager;Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->isTaskbarPresent(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/util/NavigationMode;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavMode:Lcom/android/launcher3/util/NavigationMode;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$destroy$6()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->showTaskbarFromBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private createTaskbarUIControllerForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/taskbar/TaskbarUIController;
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.pc"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/launcher3/taskbar/DesktopTaskbarUIController;

    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/DesktopTaskbarUIController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;-><init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-object p0

    :cond_1
    instance-of p0, p1, Lcom/android/quickstep/RecentsActivity;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;-><init>(Lcom/android/quickstep/RecentsActivity;)V

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$5()V

    return-void
.end method

.method private destroyExistingTaskbar()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyExistingTaskbar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarPinningPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/Item;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/launcher3/LauncherPrefs;->TASKBAR_PINNING:Lcom/android/launcher3/ConstantItem;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherPrefs;->removeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onDestroy()V

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/TaskbarManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$2(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/TaskbarManager;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$4(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/taskbar/TaskbarManager;Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$7(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method private getUnfoldTransitionProgressProviderForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lm0/o;
    .locals 0

    instance-of p0, p1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getUnfoldTransitionProgressProvider()Lm0/o;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher3/taskbar/TaskbarManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$3(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/taskbar/TaskbarManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$1(Z)V

    return-void
.end method

.method public static isPhoneButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTaskbarPresent(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 0

    sget-boolean p0, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-nez p0, :cond_1

    iget-boolean p0, p1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

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

.method private synthetic lambda$destroy$6()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarBroadcastReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->unregisterReceiverSafely(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "TASKBAR_PINNING_KEY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    return-void
.end method

.method private synthetic lambda$new$2(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    and-int/lit8 p1, p3, 0x14

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavMode:Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DisplayInfoChangeListener#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/DisplayController;->getChangeFlagsString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ACTION_SHOW_TASKBAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/16 v4, 0x1f3

    const/high16 v5, 0xc000000

    invoke-static {v1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->taskbarSystemActionPendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarBroadcastReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$new$7(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    const-string p1, "mActivity onDeviceProfileChanged"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    return-void
.end method

.method private showTaskbarFromBroadcast(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTION_SHOW_TASKBAR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->showTaskbarFromBroadcast()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 2
    .param p1    # Lcom/android/launcher3/statemanager/StatefulActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDebugActivityDeviceProfileChanged:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v0, "clearActivity"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lt0/h;

    invoke-virtual {p0, p1}, Lt0/h;->setSourceProvider(Lm0/o;)V

    :cond_1
    return-void
.end method

.method public createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->createLauncherStartFromSuwAnim(I)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v2, "b/254119092"

    if-ne p1, v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mActivity and mContext agree taskbarIsPresent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v3, "mActivity and mContext device profiles have different values, add more logs."

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string v3, "\tmActivity logs:"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\tmActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\tmActivity.getResources().getConfiguration()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\tmActivity.getDeviceProfile().isTaskbarPresent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    const-string p1, "\tmContext logs:"

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\tmContext="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\tmContext.getResources().getConfiguration()="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\t\tLauncherAppState.getIDP().getDeviceProfile(mContext).isTaskbarPresent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_4
    const-string p0, "\t\tCouldn\'t get DeviceProfile because !mUserUnlocked"

    goto/16 :goto_2
.end method

.method public destroy()V
    .locals 3

    const-string v0, "TaskbarManager#destroy()"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDebugActivityDeviceProfileChanged:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {v0, v1}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/taskbar/v2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/v2;-><init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDisplayController:Lcom/android/launcher3/util/DisplayController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDispInfoChangeListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarManager;->USER_SETUP_COMPLETE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserSetupCompleteListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarManager;->NAV_BAR_KIDS_MODE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavBarKidsModeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mShutdownReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public disableNavBarElements(IIIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput p1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->disableNavBarDisplayId:I

    iput p2, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->disableNavBarState1:I

    iput p3, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->disableNavBarState2:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->disableNavBarElements(IIIZ)V

    :cond_0
    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tTaskbarActivityContext: null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :goto_0
    return-void
.end method

.method public getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public onLongPressHomeEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->setAssistantLongPressEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onNavButtonsDarkIntensityChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput p1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->navButtonsDarkIntensity:F

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onNavButtonsDarkIntensityChanged(F)V

    :cond_0
    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onRotationProposal(IZ)V

    :cond_0
    return-void
.end method

.method public onSystemBarAttributesChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput p1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->systemBarAttrsDisplayId:I

    iput p2, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->systemBarAttrsBehavior:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onSystemBarAttributesChanged(II)V

    :cond_0
    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput p1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->sysuiStateFlags:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateSysuiStateFlags(IZ)V

    :cond_0
    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    return-void
.end method

.method public recreateTaskbar()V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->destroyExistingTaskbar()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isTaskbarPresent(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recreateTaskbar: isTaskbarEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " [dp != null (i.e. mUserUnlocked)]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " FLAG_HIDE_NAVBAR_WINDOW="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " dp.isTaskbarPresent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    const-string v5, "null"

    goto :goto_3

    :cond_3
    iget-boolean v5, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    if-nez v3, :cond_4

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, v2, v2}, Lcom/android/quickstep/SystemUiProxy;->notifyTaskbarStatus(ZZ)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-nez v3, :cond_5

    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lt0/h;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;-><init>(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;Lt0/h;)V

    iput-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mNavMode:Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/NavigationMode;)V

    :goto_4
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->init(Lcom/android/launcher3/taskbar/TaskbarSharedState;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->createTaskbarUIControllerForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarPinningPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-array v1, v1, [Lcom/android/launcher3/Item;

    sget-object v3, Lcom/android/launcher3/LauncherPrefs;->TASKBAR_PINNING:Lcom/android/launcher3/ConstantItem;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/LauncherPrefs;->addListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    return-void
.end method

.method public setActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 2
    .param p1    # Lcom/android/launcher3/statemanager/StatefulActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDebugActivityDeviceProfileChanged:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {v0, v1}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set mActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mDebugActivityDeviceProfileChanged:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {v0, v1}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->getUnfoldTransitionProgressProviderForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lm0/o;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUnfoldProgressProvider:Lt0/h;

    invoke-virtual {v0, p1}, Lt0/h;->setSourceProvider(Lm0/o;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->createTaskbarUIControllerForActivity(Lcom/android/launcher3/statemanager/StatefulActivity;)Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setUIController(Lcom/android/launcher3/taskbar/TaskbarUIController;)V

    :cond_2
    return-void
.end method

.method public setSetupUIVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iput-boolean p1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->setupUIVisible:Z

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setSetupUIVisible(Z)V

    :cond_0
    return-void
.end method
