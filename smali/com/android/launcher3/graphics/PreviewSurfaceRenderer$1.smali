.class Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;
.super Lg4/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->loadModelDataImp(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field final synthetic val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V
    .locals 6

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iput-object p7, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lg4/h;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/ModelDelegate;Lcom/android/launcher3/model/LauncherBinder;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->lambda$run$0(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mWidgetProvidersMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mCardWidgetLoaderHelper:Lg4/b;

    invoke-virtual {v1}, Lg4/b;->a()Ljava/util/Map;

    move-result-object v4

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->access$000(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;)V

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    invoke-static {p0}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->access$100(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/launcher3/graphics/p;

    invoke-direct {p2, p1}, Lcom/android/launcher3/graphics/p;-><init>(Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v0, v0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const-string v1, "screen = 0 or container = -101"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or screen = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lg4/h;->loadWorkspace(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/model/LoaderMemoryLogger;)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->this$0:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;->getLoadedLauncherWidgetInfo(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;->val$previewContext:Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;

    new-instance v3, Lcom/android/launcher3/graphics/q;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/launcher3/graphics/q;-><init>(Lcom/android/launcher3/graphics/PreviewSurfaceRenderer$1;Lcom/android/launcher3/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/util/SparseArray;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
