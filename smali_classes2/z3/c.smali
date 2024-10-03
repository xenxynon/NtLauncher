.class public final Lz3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz3/c;

    invoke-direct {v0}, Lz3/c;-><init>()V

    sput-object v0, Lz3/c;->a:Lz3/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/LauncherAppState;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lz3/c;->c(Lcom/android/launcher3/LauncherAppState;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static final c(Lcom/android/launcher3/LauncherAppState;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const-string v0, "$packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {p0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object p0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/android/launcher3/LauncherModel;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, Lz3/b;

    invoke-direct {v6, v4, v3, v1}, Lz3/b;-><init>(Lcom/android/launcher3/LauncherAppState;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
