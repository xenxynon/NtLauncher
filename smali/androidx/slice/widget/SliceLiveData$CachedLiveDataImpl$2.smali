.class Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object v1, v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-interface {p0, v0}, Landroidx/slice/SliceViewManager$SliceCallback;->onSliceUpdated(Landroidx/slice/Slice;)V

    return-void
.end method
