.class public Lg4/h;
.super Lcom/android/launcher3/model/LoaderTask;
.source "SourceFile"


# instance fields
.field private checkNothingIconForceRendering:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;)V
    .locals 10
    .param p5    # Lcom/android/launcher3/model/LauncherBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "appState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherBinder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lg4/h;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;ZILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;Z)V
    .locals 1
    .param p5    # Lcom/android/launcher3/model/LauncherBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "appState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherBinder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/model/LoaderTask;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;)V

    iput-boolean p6, p0, Lg4/h;->checkNothingIconForceRendering:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;ZILkotlin/jvm/internal/i;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lg4/h;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;Z)V

    return-void
.end method


# virtual methods
.method protected getContentTable(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_0

    sget-object p0, Lq2/r;->a:Lq2/r;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lq2/r;->a(Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/model/LoaderTask;->getContentTable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "{\n            if (contex\u2026tTable(context)\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method protected getModelDbController(Landroid/content/Context;)Lg4/i;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {p0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getModelDbController()Lg4/i;

    move-result-object p0

    const-string p1, "{\n            // \u65e0\u8bba\u8fd8\u662f\u5b9e\u9645\u5207\u2026delDbController\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final loadWorkspace(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/model/LoaderMemoryLogger;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    return-void
.end method

.method protected migrateGridIfNeeded(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lc4/b;->b:Lc4/b$a;

    invoke-virtual {p0, p1}, Lc4/b$a;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected prepareLoadWorkspace()V
    .locals 4

    iget-boolean v0, p0, Lg4/h;->checkNothingIconForceRendering:Z

    if-eqz v0, :cond_1

    const-string v0, "checkNothingIconForceRenderChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo3/b;->z(Ljava/lang/Boolean;Z)Z

    move-result v1

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/b;->u()Z

    move-result v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v0, "LoaderTask"

    const-string v1, "The force render property changes and we need to clean the cache prevent reading of bad memory."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/icons/IconCache;->updateIconParamsInWorker(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
