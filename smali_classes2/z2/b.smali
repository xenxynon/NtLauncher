.class public final Lz2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    const-string v1, "default_visual_style"

    const-string v2, "Android"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lz2/b;->a:Lcom/android/launcher3/ConstantItem;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lz2/b;->i(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public static final b(Landroid/content/Context;)Lz2/c;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lz2/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Nothing"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "DefaultLayout"

    if-eqz p0, :cond_0

    const-string p0, "getDefaultVisualStyle -> STYLE_NOTHING"

    invoke-static {v0, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lz2/c$c;->g:Lz2/c$c;

    goto :goto_0

    :cond_0
    const-string p0, "getDefaultVisualStyle else"

    invoke-static {v0, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lz2/c$b;->g:Lz2/c$b;

    :goto_0
    return-object p0
.end method

.method private static final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    sget-object v0, Lz2/b;->a:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final d(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lz2/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Nothing"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "DefaultLayout"

    if-eqz p0, :cond_0

    const-string p0, "getStyleMatchedDefaultLayoutId -> STYLE_NOTHING"

    invoke-static {v0, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const-string p0, "getStyleMatchedDefaultLayoutId else"

    invoke-static {v0, p0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method private static final e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ln5/k;

    sget-object v1, Lz2/b;->a:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Ln5/k;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs;->put([Ln5/k;)V

    return-void
.end method

.method private static final f(Landroid/content/Context;Lz2/c;)V
    .locals 2

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {p1}, Lz2/c;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lo3/b;->O(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static final g(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setup default visual style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultLayout"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Android"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ly4/a;->h:Ly4/a;

    sget-object p1, Lz2/c$b;->g:Lz2/c$b;

    :goto_0
    invoke-virtual {p0, p1}, Ly4/a;->a(Lz2/c;)V

    goto :goto_1

    :cond_0
    const-string v0, "Nothing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lz2/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lz2/c$c;->g:Lz2/c$c;

    invoke-static {p0, p1}, Lz2/b;->f(Landroid/content/Context;Lz2/c;)V

    invoke-static {p0, p1, p2}, Lz2/b;->h(Landroid/content/Context;Lz2/c;Landroid/os/Bundle;)V

    sget-object p0, Ly4/a;->h:Ly4/a;

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid default style: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", it should be one of VisualStyle"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final h(Landroid/content/Context;Lz2/c;Landroid/os/Bundle;)V
    .locals 5

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p1}, Lz2/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz4/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentDbName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " targetDbName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DefaultLayout"

    invoke-static {v4, v3}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lz2/c;->a()Z

    move-result v3

    invoke-static {v3}, Lt4/f;->e(Z)V

    invoke-virtual {p1}, Lz2/c;->b()Z

    move-result v3

    invoke-static {v3}, Lt4/f;->d(Z)V

    const-string v3, "idp"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lz2/c;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v0, p0, p1, v3}, Lb3/l;->a(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lz2/a;

    invoke-direct {v0, p0, v2, v1}, Lz2/a;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    const-string v0, "force_load_home_screen"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-ne p2, p1, :cond_0

    move v3, p1

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->refreshAndReloadLauncher()V

    :cond_1
    return-void
.end method

.method private static final i(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetDbName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lg4/i;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "create_empty_db"

    const-string v1, "load_style_nothing"

    invoke-static {p1, p2, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lg4/i;->k(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p0}, Lg4/i;->d(Landroid/content/Context;)V

    return-void
.end method
