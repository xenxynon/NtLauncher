.class Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

.field final synthetic val$event:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# direct methods
.method constructor <init>(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;->this$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    iput-object p2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;->val$event:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/LauncherAppState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/model/BgDataModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/model/AllAppsList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object p2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;->this$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    invoke-static {p2}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->access$300(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;->this$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    iget-object p0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;->val$event:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-static {p2}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->access$300(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->access$400(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->access$500(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    return-void
.end method
