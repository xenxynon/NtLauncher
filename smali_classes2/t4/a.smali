.class public final Lt4/a;
.super Lg4/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/a$a;
    }
.end annotation


# static fields
.field public static final j:Lt4/a$a;


# instance fields
.field private final g:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

.field private final h:Lt4/e;

.field private i:Lt4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt4/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt4/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lt4/a;->j:Lt4/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Lt4/e;Lcom/android/launcher3/LauncherAppState;)V
    .locals 10

    const-string v0, "previewContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewIdpCouple"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v4}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getModelDelegate()Lcom/android/launcher3/model/ModelDelegate;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/model/LauncherBinder;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/BgDataModel;

    invoke-direct {v1}, Lcom/android/launcher3/model/BgDataModel;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/launcher3/model/BgDataModel$Callbacks;

    const/4 v3, 0x0

    invoke-direct {v6, v0, v1, v3, v2}, Lcom/android/launcher3/model/LauncherBinder;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;[Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v1 .. v9}, Lg4/h;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;ZILkotlin/jvm/internal/i;)V

    iput-object p1, p0, Lt4/a;->g:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iput-object p2, p0, Lt4/a;->h:Lt4/e;

    return-void
.end method

.method private final e(Landroid/content/Context;Lt4/e;)Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object p0, Lc4/b;->b:Lc4/b$a;

    invoke-virtual {p2}, Lt4/e;->b()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc4/b$a;->d(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lt4/e;->b()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lc4/b$a;->b(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final f()Lt4/g;
    .locals 0

    iget-object p0, p0, Lt4/a;->i:Lt4/g;

    return-object p0
.end method

.method public run()V
    .locals 10

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lt4/a;->h:Lt4/e;

    invoke-direct {p0, v0, v1}, Lt4/a;->e(Landroid/content/Context;Lt4/e;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New gird name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lt4/a;->h:Lt4/e;

    invoke-virtual {v2}, Lt4/e;->b()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_by_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lt4/a;->h:Lt4/e;

    invoke-virtual {v2}, Lt4/e;->b()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Migrated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigLoader"

    invoke-static {v2, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "screen >= 0 or container = -101"

    invoke-virtual {p0, v0, v2, v1}, Lg4/h;->loadWorkspace(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->getScreenOrdersForPreview()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v0

    const-string v1, "mBgDataModel.screenOrdersForPreview.toArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Le6/e;->e(II)I

    move-result v1

    new-instance v9, Lt4/g;

    iget-object v3, p0, Lt4/a;->g:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    iget-object v2, p0, Lt4/a;->h:Lt4/e;

    invoke-virtual {v2}, Lt4/e;->b()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const-string v2, "mBgDataModel"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mCardWidgetLoaderHelper:Lg4/b;

    invoke-virtual {v2}, Lg4/b;->a()Ljava/util/Map;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    const-string v0, "copyOf(this, newSize)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lt4/g;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;[I)V

    iput-object v9, p0, Lt4/a;->i:Lt4/g;

    :cond_0
    return-void
.end method
