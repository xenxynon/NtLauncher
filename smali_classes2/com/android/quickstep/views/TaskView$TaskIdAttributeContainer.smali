.class public Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskIdAttributeContainer"
.end annotation


# instance fields
.field private final mA11yNodeId:I

.field private final mIconView:Lcom/android/quickstep/views/IconView;

.field private mStagePosition:I

.field private final mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private final mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

.field final synthetic this$0:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/IconView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->this$0:Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    iput-object p4, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mIconView:Lcom/android/quickstep/views/IconView;

    iput p5, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mStagePosition:I

    const/4 p1, 0x1

    if-ne p5, p1, :cond_0

    const p1, 0x7f0b0364

    goto :goto_0

    :cond_0
    const p1, 0x7f0b036a

    :goto_0
    iput p1, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mA11yNodeId:I

    return-void
.end method

.method static synthetic access$2500(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method


# virtual methods
.method public getA11yNodeId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mA11yNodeId:I

    return p0
.end method

.method public getIconView()Lcom/android/quickstep/views/IconView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mIconView:Lcom/android/quickstep/views/IconView;

    return-object p0
.end method

.method public getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->this$0:Lcom/android/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/TaskView;->getItemInfo(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public getStagePosition()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mStagePosition:I

    return p0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method public getTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->this$0:Lcom/android/quickstep/views/TaskView;

    return-object p0
.end method

.method public getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    return-object p0
.end method

.method setStagePosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mStagePosition:I

    return-void
.end method
