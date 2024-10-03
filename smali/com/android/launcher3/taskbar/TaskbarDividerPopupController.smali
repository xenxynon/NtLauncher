.class public final Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# instance fields
.field private final context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final launcherPrefs:Lcom/android/launcher3/LauncherPrefs;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->launcherPrefs:Lcom/android/launcher3/LauncherPrefs;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->showPinningView$lambda$0(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    return-void
.end method

.method public static final synthetic access$animatePersistentToTransientTaskbar(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->animatePersistentToTransientTaskbar()V

    return-void
.end method

.method public static final synthetic access$animateTransientToPersistentTaskbar(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->animateTransientToPersistentTaskbar()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object p0
.end method

.method public static final synthetic access$getLauncherPrefs$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)Lcom/android/launcher3/LauncherPrefs;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->launcherPrefs:Lcom/android/launcher3/LauncherPrefs;

    return-object p0
.end method

.method private final animatePersistentToTransientTaskbar()V
    .locals 0

    return-void
.end method

.method private final animateTransientToPersistentTaskbar()V
    .locals 0

    return-void
.end method

.method private static final showPinningView$lambda$0(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 2

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->Companion:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$Companion;

    iget-object v1, p1, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$Companion;->createAndPopulate(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->setOnCloseCallback(Ly5/l;)V

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$2;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$2;-><init>(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->setChangePreference(Ly5/a;)V

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onPopupVisibilityChanged(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->show()V

    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "prefix"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pw"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TaskbarPinningController:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 1

    const-string v0, "taskbarControllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public final showPinningView(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    new-instance v0, Lcom/android/launcher3/taskbar/l1;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/taskbar/l1;-><init>(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
