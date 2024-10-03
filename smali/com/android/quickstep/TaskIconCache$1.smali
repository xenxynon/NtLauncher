.class Lcom/android/quickstep/TaskIconCache$1;
.super Lcom/android/quickstep/util/CancellableTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/util/CancellableTask<",
        "Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TaskIconCache;

.field final synthetic val$callback:Ljava/util/function/Consumer;

.field final synthetic val$task:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskIconCache;Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/TaskIconCache$1;->this$0:Lcom/android/quickstep/TaskIconCache;

    iput-object p2, p0, Lcom/android/quickstep/TaskIconCache$1;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/quickstep/TaskIconCache$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/quickstep/util/CancellableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultOnBg()Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache$1;->this$0:Lcom/android/quickstep/TaskIconCache;

    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache$1;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, p0}, Lcom/android/quickstep/TaskIconCache;->access$000(Lcom/android/quickstep/TaskIconCache;Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getResultOnBg()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache$1;->getResultOnBg()Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object p0

    return-object p0
.end method

.method public handleResult(Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache$1;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/quickstep/TaskIconCache$1;->val$callback:Ljava/util/function/Consumer;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/quickstep/TaskIconCache$1;->this$0:Lcom/android/quickstep/TaskIconCache;

    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache$1;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, p0}, Lcom/android/quickstep/TaskIconCache;->dispatchIconUpdate(I)V

    return-void
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TaskIconCache$1;->handleResult(Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;)V

    return-void
.end method
