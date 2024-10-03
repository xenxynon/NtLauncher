.class public final Lcom/android/launcher3/taskbar/TaskbarInsetsController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarInsetsController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarInsetsController$Companion;


# instance fields
.field private final context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final deviceProfileChangeListener:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Lcom/android/launcher3/DeviceProfile;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private final gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private final insetsOwner:Landroid/os/IBinder;

.field private final taskbarHeightForIme:I

.field private final touchableRegion:Landroid/graphics/Region;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->Companion:Lcom/android/launcher3/taskbar/TaskbarInsetsController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07054d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Ly5/l;

    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/taskbar/m2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/m2;-><init>(Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    return-void
.end method

.method public static synthetic a(Ly5/l;Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onDestroy$lambda$1(Ly5/l;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public static synthetic b(Ly5/l;Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->init$lambda$0(Ly5/l;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method private final getInsetsByNavMode(I)Landroid/graphics/Insets;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneButtonNavMode(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1, v1, p1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    const-string p1, "of(0, 0, bottomInset, 0)"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_1
    invoke-static {v1, v1, v1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    const-string p1, "of(0, 0, 0, bottomInset)"

    goto :goto_0
.end method

.method private static final init$lambda$0(Ly5/l;Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onDestroy$lambda$1(Ly5/l;Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarInsetsController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\twindowHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    const-string v3, "windowLayoutParams"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    iget-object p0, v2, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const-string v0, "windowLayoutParams.providedInsets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\tprovidedInsets: (type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v5

    invoke-static {v5}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " insetsSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v4, " insetsSizeOverrides={"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object v3

    const-string v4, "provider.insetsSizeOverrides"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    if-lez v5, :cond_2

    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const-string v3, "})"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final getTaskbarHeightForIme()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    return p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 2

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string v0, "context.windowLayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Ly5/l;

    new-instance v1, Lcom/android/launcher3/taskbar/l2;

    invoke-direct {v1, v0}, Lcom/android/launcher3/taskbar/l2;-><init>(Ly5/l;)V

    invoke-interface {p1, v1}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->registerForCallingUser()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Ly5/l;

    new-instance v2, Lcom/android/launcher3/taskbar/k2;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/k2;-><init>(Ly5/l;)V

    invoke-interface {v0, v2}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    return-void
.end method

.method public final onTaskbarWindowHeightOrInsetsChanged()V
    .locals 15

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, "windowLayoutParams"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v4

    :cond_0
    const/4 v7, 0x5

    new-array v7, v7, [Landroid/view/InsetsFrameProvider;

    new-instance v8, Landroid/view/InsetsFrameProvider;

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    invoke-direct {v8, v9, v6, v10}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v8, v5, v5}, Landroid/view/InsetsFrameProvider;->setFlags(II)Landroid/view/InsetsFrameProvider;

    move-result-object v8

    aput-object v8, v7, v6

    new-instance v8, Landroid/view/InsetsFrameProvider;

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v10

    invoke-direct {v8, v9, v6, v10}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    aput-object v8, v7, v5

    new-instance v8, Landroid/view/InsetsFrameProvider;

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v10

    invoke-direct {v8, v9, v6, v10}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    aput-object v8, v7, v2

    new-instance v8, Landroid/view/InsetsFrameProvider;

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v10

    invoke-direct {v8, v9, v6, v10}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v8, v6}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x4

    new-instance v8, Landroid/view/InsetsFrameProvider;

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v10

    invoke-direct {v8, v9, v5, v10}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v8, v6}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v8

    aput-object v8, v7, v1

    iput-object v7, v0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v4

    :cond_2
    new-array v1, v1, [Landroid/view/InsetsFrameProvider;

    new-instance v7, Landroid/view/InsetsFrameProvider;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v9

    invoke-direct {v7, v8, v6, v9}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    aput-object v7, v1, v6

    new-instance v7, Landroid/view/InsetsFrameProvider;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v9

    invoke-direct {v7, v8, v6, v9}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    aput-object v7, v1, v5

    new-instance v7, Landroid/view/InsetsFrameProvider;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v9

    invoke-direct {v7, v8, v6, v9}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    aput-object v7, v1, v2

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const-string v1, "controllers"

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v4

    :cond_3
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTouchableHeight()I

    move-result v0

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v8, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v8, v4

    :cond_4
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v8, v0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v9, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v9, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v9, v4

    :cond_5
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v7, v6, v8, v0, v9}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v4

    :cond_6
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getContentHeightToReportToApps()I

    move-result v0

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v7, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v7, v4

    :cond_7
    iget-object v1, v7, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTappableHeightToReportToApps()I

    move-result v1

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v8, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v8, v4

    :cond_8
    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const-string v9, "windowLayoutParams.providedInsets"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v10, v8

    move v11, v6

    :goto_1
    if-ge v11, v10, :cond_e

    aget-object v12, v8, v11

    invoke-virtual {v12}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v14

    if-eq v13, v14, :cond_c

    invoke-virtual {v12}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v14

    if-ne v13, v14, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v12}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v14

    if-ne v13, v14, :cond_a

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsByNavMode(I)Landroid/graphics/Insets;

    move-result-object v13

    goto :goto_3

    :cond_a
    invoke-virtual {v12}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v14

    if-ne v13, v14, :cond_b

    invoke-virtual {v12}, Landroid/view/InsetsFrameProvider;->getIndex()I

    move-result v13

    if-nez v13, :cond_b

    iget-object v13, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v13, v7}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivityForCallingUser(Landroid/content/res/Resources;)I

    move-result v13

    invoke-static {v13, v6, v6, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v13

    goto :goto_3

    :cond_b
    invoke-virtual {v12}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v14

    if-ne v13, v14, :cond_d

    invoke-virtual {v12}, Landroid/view/InsetsFrameProvider;->getIndex()I

    move-result v13

    if-ne v13, v5, :cond_d

    iget-object v13, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v13, v7}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivityForCallingUser(Landroid/content/res/Resources;)I

    move-result v13

    invoke-static {v6, v6, v13, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v13

    goto :goto_3

    :cond_c
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsByNavMode(I)Landroid/graphics/Insets;

    move-result-object v13

    :goto_3
    invoke-virtual {v12, v13}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_e
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsByNavMode(I)Landroid/graphics/Insets;

    move-result-object v0

    new-array v7, v5, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    new-instance v8, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    const/16 v10, 0x7db

    invoke-direct {v8, v10, v0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    aput-object v8, v7, v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsByNavMode(I)Landroid/graphics/Insets;

    move-result-object v8

    new-array v2, v2, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    new-instance v11, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-direct {v11, v10, v0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    aput-object v11, v2, v6

    new-instance v0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    const/16 v10, 0x7ef

    invoke-direct {v0, v10, v8}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v4

    :cond_f
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v0

    move v9, v6

    :goto_4
    if-ge v9, v8, :cond_12

    aget-object v10, v0, v9

    iget-object v11, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v11}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v10}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v12

    if-ne v11, v12, :cond_10

    invoke-virtual {v10, v2}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    goto :goto_5

    :cond_10
    invoke-virtual {v10}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v12

    if-eq v11, v12, :cond_11

    invoke-virtual {v10, v7}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    :cond_11
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_13

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    move-object v4, v0

    :goto_6
    if-lez v1, :cond_14

    goto :goto_7

    :cond_14
    move v5, v6

    :goto_7
    iput-boolean v5, v4, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->notifyUpdateLayoutParams()V

    return-void
.end method

.method public final updateInsetsTouchability(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6

    const-string v0, "insetsInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const/4 v1, 0x0

    const-string v2, "controllers"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v3

    iget-object v4, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-gez v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto/16 :goto_4

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isImeVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v1

    :cond_4
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v1

    :cond_6
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isTaskbarTouchable()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v1

    :cond_8
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isTaskbarWindowFullscreen()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, v4}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    :goto_1
    move v0, v4

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v1

    :cond_b
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarViewController;->areIconsVisible()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v0, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_d
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isInOverview()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    move-object v1, v3

    :goto_2
    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->getLastDrawnTransientRect()Landroid/graphics/RectF;

    move-result-object v1

    const-string v2, "controllers.taskbarActiv\u2026er.lastDrawnTransientRect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-direct {v2, v3}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_3

    :cond_f
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :goto_3
    invoke-virtual {p1, v5}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto :goto_1

    :goto_4
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->excludeFromMagnificationRegion(Z)V

    return-void
.end method
