.class Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedLiveDataImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Landroidx/slice/Slice;",
        ">;"
    }
.end annotation


# instance fields
.field private mActive:Z

.field final mContext:Landroid/content/Context;

.field private final mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

.field private mLive:Z

.field mPendingContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mPendingIntent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field mPendingUri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

.field private mSliceCallbackRegistered:Z

.field final mSliceViewManager:Landroidx/slice/SliceViewManager;

.field mStructure:Landroidx/slice/SliceStructure;

.field private final mUpdateSlice:Ljava/lang/Runnable;

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingContext:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingIntent:Ljava/util/List;

    new-instance v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;-><init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    new-instance v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;-><init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iput-object p4, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    new-instance p2, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;

    invoke-direct {p2, p0, p1, p3, p4}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;-><init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/content/Context;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method goLive(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingContext:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingIntent:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mActive:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object p2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object p3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {p1, p2, p3}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method protected onActive()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mActive:Z

    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mActive:Z

    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method onSliceError(ILjava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    invoke-interface {v0, p1, p2}, Landroidx/slice/widget/SliceLiveData$OnErrorListener;->onSliceError(ILjava/lang/Throwable;)V

    iget-boolean p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {p1, v0, v1}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    iput-boolean p2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallbackRegistered:Z

    :cond_0
    iput-boolean p2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    :cond_1
    return-void
.end method
