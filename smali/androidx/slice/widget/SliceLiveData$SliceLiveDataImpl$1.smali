.class Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v2, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v2, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v3, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v2, v3, v1}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {p0, v0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$200(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V

    return-void
.end method
