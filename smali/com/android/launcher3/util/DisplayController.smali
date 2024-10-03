.class public Lcom/android/launcher3/util/DisplayController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/DisplayController$Info;,
        Lcom/android/launcher3/util/DisplayController$PortraitSize;,
        Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransientTaskbarStatusForTests:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDM:Landroid/hardware/display/DisplayManager;

.field private mDestroyed:Z

.field private mInfo:Lcom/android/launcher3/util/DisplayController$Info;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefs:Lcom/android/launcher3/LauncherPrefs;

.field private mPriorityListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

.field private final mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private final mWindowContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/util/b;->a:Lcom/android/launcher3/util/b;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/util/g;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/g;-><init>(Lcom/android/launcher3/util/DisplayController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/util/DisplayController;->mDestroyed:Z

    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mPrefs:Lcom/android/launcher3/LauncherPrefs;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    :goto_0
    const-string v2, "android.intent.action.OVERLAY_CHANGED"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->registerPkgActions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-direct {p0, v1}, Lcom/android/launcher3/util/DisplayController;->getDisplayInfoContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/window/WindowManagerProxy;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/util/f;->a:Lcom/android/launcher3/util/f;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/DisplayController;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/DisplayController;->lambda$handleInfoChange$2(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/DisplayController;->lambda$handleInfoChange$1(Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/DisplayController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/DisplayController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static enableTransientTaskbarForTests(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-boolean p0, Lcom/android/launcher3/util/DisplayController;->sTransientTaskbarStatusForTests:Z

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/util/DisplayController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController;->onIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private getDisplayInfoContext(Landroid/view/Display;)Landroid/content/Context;
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/DisplayController;->lambda$new$0(Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method

.method private handleInfoChange(Landroid/view/Display;)V
    .locals 5
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController;->getDisplayInfoContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/window/WindowManagerProxy;Ljava/util/Map;)V

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController$Info;->access$100(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v3

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->access$100(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v4, v1, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    iget-object v4, v1, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v2, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/window/WindowManagerProxy;Ljava/util/Map;)V

    :cond_1
    iget-object v0, v2, Lcom/android/launcher3/util/DisplayController$Info;->normalizedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    iget-object v3, v1, Lcom/android/launcher3/util/DisplayController$Info;->normalizedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/window/CachedDisplayInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget v3, v2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget v4, v1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-eq v3, v4, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController$Info;->access$100(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v3

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->access$100(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, v2, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v4, v1, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x4

    :cond_4
    iget-object v3, v2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    iget-object v4, v1, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    if-eq v3, v4, :cond_5

    or-int/lit8 v0, v0, 0x10

    :cond_5
    iget-object v3, v2, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    iget-object v4, v1, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    or-int/lit8 v0, v0, 0x8

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/util/e;->a:Lcom/android/launcher3/util/e;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_7
    if-eqz v0, :cond_8

    iput-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/util/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/util/c;-><init>(Lcom/android/launcher3/util/DisplayController;Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public static isTransientTaskbar(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar()Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Ljava/io/PrintWriter;Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/util/DisplayController;->lambda$dump$3(Ljava/io/PrintWriter;Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V

    return-void
.end method

.method private static synthetic lambda$dump$3(Ljava/io/PrintWriter;Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  perDisplayBounds - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$handleInfoChange$1(Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CHANGE_SUPPORTED_BOUNDS) perDisplayBounds - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayController"

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleInfoChange$2(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/DisplayController;->notifyChange(Landroid/content/Context;I)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/android/launcher3/util/window/CachedDisplayInfo;[Lcom/android/launcher3/util/WindowBounds;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CTOR) perDisplayBounds - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayController"

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyChange(Landroid/content/Context;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mPriorityListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-interface {v2, p1, v3, p2}, Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onIntent(Landroid/content/Intent;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/launcher3/util/DisplayController;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget v3, v0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v4, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController$Info;->access$100(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    const-string p1, "DisplayController"

    const-string v0, "Configuration changed, notifying listeners"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController;->handleInfoChange(Landroid/view/Display;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/DisplayController;->mDestroyed:Z

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    const-string v0, "DisplayController.Info:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  normalizedDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->normalizedDisplayInfo:Lcom/android/launcher3/util/window/CachedDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  fontScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  densityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController$Info;->access$100(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  navigationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)Landroid/util/ArrayMap;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/util/d;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/d;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public getChangeFlagsString(I)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/util/StringJoiner;

    const-string v0, "|"

    invoke-direct {p0, v0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const-string v1, "CHANGE_ACTIVE_SCREEN"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "CHANGE_ROTATION"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "CHANGE_DENSITY"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v0, 0x8

    const-string v1, "CHANGE_SUPPORTED_BOUNDS"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v0, 0x10

    const-string v1, "CHANGE_NAVIGATION_MODE"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Lcom/android/launcher3/util/DisplayController$Info;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    return-object p0
.end method

.method public isTransientTaskbar()Z
    .locals 3

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_PINNING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mPrefs:Lcom/android/launcher3/LauncherPrefs;

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->TASKBAR_PINNING:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/NavigationMode;

    sget-object v0, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/launcher3/util/DisplayController;->sTransientTaskbarStatusForTests:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TRANSIENT_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayController#onConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/254119092"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController$Info;->access$100(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget v3, v2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-ne v1, v3, :cond_0

    invoke-static {v2}, Lcom/android/launcher3/util/DisplayController$Info;->access$200(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/launcher3/util/DisplayController$PortraitSize;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/util/DisplayController$PortraitSize;

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v2, v3, p1}, Lcom/android/launcher3/util/DisplayController$PortraitSize;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/DisplayController$PortraitSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/util/DisplayController;->handleInfoChange(Landroid/view/Display;)V

    :cond_1
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPriorityListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mPriorityListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    return-void
.end method
