.class Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/slice/SliceUtils$SliceActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1$1;->this$1:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSliceAction(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1$1;->this$1:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->goLive(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
