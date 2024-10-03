.class public Lcom/android/quickstep/util/GroupTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final task1:Lcom/android/systemui/shared/recents/model/Task;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final task2:Lcom/android/systemui/shared/recents/model/Task;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final taskViewType:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
    .locals 1
    .param p1    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;I)V
    .locals 0
    .param p1    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p2, p0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/quickstep/util/GroupTask;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iput p4, p0, Lcom/android/quickstep/util/GroupTask;->taskViewType:I

    return-void
.end method


# virtual methods
.method public containsTask(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public copy()Lcom/android/quickstep/util/GroupTask;
    .locals 4

    new-instance v0, Lcom/android/quickstep/util/GroupTask;

    new-instance v1, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, p0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v2, p0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v3, v2}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/util/GroupTask;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-direct {v0, v1, v3, p0}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    return-object v0
.end method

.method public hasMultipleTasks()Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
