.class Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/slice/SliceViewManager$SliceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSliceUpdated(Landroidx/slice/Slice;)V
    .locals 5
    .param p1    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-virtual {p0, v1, v0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->onSliceError(ILjava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v2, Landroidx/slice/SliceStructure;

    invoke-direct {v2, p1}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v3, v3, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mStructure:Landroidx/slice/SliceStructure;

    invoke-virtual {v3, v2}, Landroidx/slice/SliceStructure;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->onSliceError(ILjava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v2, v2, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v2, v2, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {p1, v2}, Landroidx/slice/core/SliceQuery;->findItem(Landroidx/slice/Slice;Landroid/net/Uri;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v3, v3, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingContext:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v4, v4, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingIntent:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-virtual {p0, v0, p1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->onSliceError(ILjava/lang/Throwable;)V

    return-void

    :cond_2
    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->onSliceError(ILjava/lang/Throwable;)V

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingContext:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingIntent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-static {p0, p1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->access$100(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Ljava/lang/Object;)V

    return-void
.end method
