.class public Lcom/android/launcher3/LauncherAppState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherAppState$IconObserver;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/LauncherAppState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCachedRemoteViews:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "itself"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private final mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

.field private final mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

.field private mLauncherDatabase:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/k2;->a:Lcom/android/launcher3/k2;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "app_icons.db"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherAppState;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "Launcher"

    const-string v1, "LauncherAppState initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v1, Lcom/android/launcher3/b2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/b2;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/g2;

    invoke-direct {v2, v1}, Lcom/android/launcher3/g2;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-direct {v0, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    const-string v5, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    const-string v6, "android.intent.action.PROFILE_INACCESSIBLE"

    const-string v7, "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v2, Lcom/android/launcher3/p2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/p2;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/q2;

    invoke-direct {v2, v1}, Lcom/android/launcher3/q2;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/pm/UserCache;->addUserChangeListener(Ljava/lang/Runnable;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/c2;

    invoke-direct {v2, v0}, Lcom/android/launcher3/c2;-><init>(Lcom/android/launcher3/util/SafeCloseable;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/android/launcher3/util/LockedUserState;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/n2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/n2;-><init>(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LockedUserState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    new-instance v0, Lcom/android/launcher3/l2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/l2;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/LauncherAppState;->onNotificationSettingsChanged(Z)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v2, Lcom/android/launcher3/d2;

    invoke-direct {v2, p1, v0}, Lcom/android/launcher3/d2;-><init>(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/launcher3/i2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/i2;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo3/b;->F(Ls3/d;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v2, Lcom/android/launcher3/e2;

    invoke-direct {v2, p1}, Lcom/android/launcher3/e2;-><init>(Ls3/d;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/launcher3/j2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/j2;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo3/b;->H(Ls3/e;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v0, Lcom/android/launcher3/f2;

    invoke-direct {v0, p1}, Lcom/android/launcher3/f2;-><init>(Ls3/e;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mCachedRemoteViews:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v2, Lcom/android/launcher3/icons/LauncherIconProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher3/icons/LauncherIconProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    new-instance v9, Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v9, p1, v1, p2, v2}, Lcom/android/launcher3/icons/IconCache;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/lang/String;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v9, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    new-instance v1, Lcom/android/launcher3/LauncherModel;

    new-instance v7, Lcom/android/launcher3/AppFilter;

    invoke-direct {v7, p1}, Lcom/android/launcher3/AppFilter;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v8, p2

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/LauncherModel;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;Z)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/launcher3/r2;

    invoke-direct {p0, v9}, Lcom/android/launcher3/r2;-><init>(Lcom/android/launcher3/icons/IconCache;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/LauncherAppState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$0(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/icons/LauncherIconProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$2(Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    return-void
.end method

.method public static synthetic c(Ls3/d;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->lambda$new$5(Ls3/d;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$4(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public static getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/InvariantDeviceProfile;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherAppState;

    return-object p0
.end method

.method public static getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    return-object v0
.end method

.method public static synthetic h(Ls3/e;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->lambda$new$6(Ls3/e;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/LauncherAppState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->onNotificationSettingsChanged(Z)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/LauncherAppState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->onIconPackSelectionChanged(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->refreshAndReloadLauncher()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .locals 3

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/Item;

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->THEMED_ICONS:Lcom/android/launcher3/ConstantItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/LauncherPrefs;->removeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/h2;

    invoke-direct {v2, v1}, Lcom/android/launcher3/h2;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->setWidgetRefreshCallback(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/android/launcher3/LauncherAppState$IconObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/LauncherAppState$IconObserver;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$1;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/icons/IconProvider;->registerIconChangeListener(Lcom/android/launcher3/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/c2;

    invoke-direct {v4, v1}, Lcom/android/launcher3/c2;-><init>(Lcom/android/launcher3/util/SafeCloseable;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/launcher3/m2;

    invoke-direct {v1, v0}, Lcom/android/launcher3/m2;-><init>(Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/Item;

    sget-object v3, Lcom/android/launcher3/LauncherPrefs;->THEMED_ICONS:Lcom/android/launcher3/ConstantItem;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/LauncherPrefs;->addListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v2, Lcom/android/launcher3/o2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/o2;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/pm/InstallSessionHelper;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->registerInstallTracker(Lcom/android/launcher3/pm/InstallSessionTracker$Callback;)Lcom/android/launcher3/pm/InstallSessionTracker;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/s2;

    invoke-direct {v0, p1}, Lcom/android/launcher3/s2;-><init>(Lcom/android/launcher3/pm/InstallSessionTracker;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$new$4(Lcom/android/launcher3/util/SettingsCache;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method private static synthetic lambda$new$5(Ls3/d;)V
    .locals 1

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->I(Ls3/d;)V

    return-void
.end method

.method private static synthetic lambda$new$6(Ls3/e;)V
    .locals 1

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->K(Ls3/e;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$1(Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V

    return-void
.end method

.method private onIconPackSelectionChanged(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ly4/a;->h:Ly4/a;

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Ly4/a;->d(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private onNothingIconApplyStatusChanged(Z)V
    .locals 2

    const-string v0, "LauncherAppState"

    const-string v1, "LauncherAppState -> onNothingIconApplyStatusChanged"

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherModel;->updateNothingIconApplyStatus(Z)V

    return-void
.end method

.method private onNotificationSettingsChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {p1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->requestRebind(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->lambda$new$3(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/LauncherAppState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState;->onNothingIconApplyStatusChanged(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->destroy()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    sget-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->setWidgetRefreshCallback(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getIconCache()Lcom/android/launcher3/icons/IconCache;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    return-object p0
.end method

.method public getIconProvider()Lcom/android/launcher3/icons/LauncherIconProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    return-object p0
.end method

.method public getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    return-object p0
.end method

.method public getLauncherDatabase()Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mLauncherDatabase:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;->e(Landroid/content/Context;)Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mLauncherDatabase:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mLauncherDatabase:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    return-object p0
.end method

.method public getModel()Lcom/android/launcher3/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p0
.end method

.method public refreshAndReloadLauncher()V
    .locals 3

    invoke-static {}, Lcom/android/launcher3/icons/LauncherIcons;->clearPool()V

    invoke-static {}, Ls2/a;->clearPool()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateIconParams(II)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method
